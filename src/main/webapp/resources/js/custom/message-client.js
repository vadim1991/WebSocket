var stompClient = null;
var activeFriendshipId = null;
var username = null;
var friendshipOffset = 0;
var friendshipCount = 10;
var friendshipMessageMap = {};
var friendshipMap = {};
var unreadMessagesFromMe = {};
var unreadMessagesToMe = {};

connect();

function loadFriendships() {
    var request = new Object();
    request.offset = friendshipOffset;
    request.count = friendshipCount;
    send("/app/friendships", request);
    friendshipOffset += friendshipCount;
}

function send(topicURL, object) {
    stompClient.send(topicURL, {}, JSON.stringify(object))
}

function handleNewMessage(messageJson) {
    var message = JSON.parse(messageJson);
    checkAndPutToUnread(message);
    var friendshipMessage = friendshipMessageMap[message.friendship.id];
    var messageObject = new MessageObject(message.owner, message, username).build();
    friendshipMessage.find(".messages").prepend(messageObject);
    var friendship = friendshipMap[message.friendship.id];
    friendship.find(".message").text(message.content);
    friendship.addClass("unread-message");
    processMessage(message);
    if (activeFriendshipId == message.friendship.id) {
        sendMarkReadMessagesRequest(activeFriendshipId);
    }
}

function processMessage(message) {
    var messageOwner = message.owner.email;
    if (username == messageOwner) {
        $.notify("You've sent new message!)", "success");
    } else {
        var photo = '<img src="' + message.owner.photo + '" width="50" alt="" class="media-object">';
        $.notify({
            user: message.owner.firstName + " " + message.owner.lastName,
            photo: photo,
            message: message.content
        }, {
            style: 'incoming'
        });
        beep();
    }
}

function beep() {
    var snd = new Audio("resources/sound/beep.mp3");
    snd.play();
}

function checkAndPutToUnread(message) {
    if (!message.read) {
        if (message.owner.email == username) {
            checkAndPutArrayToMap(unreadMessagesFromMe, message.friendship.id, message);
        } else {
            checkAndPutArrayToMap(unreadMessagesToMe, message.friendship.id, message);
        }
    }
}

function checkAndPutArrayToMap(map, key, object) {
    var array = map[key];
    if (!array) {
        array = [];
    }
    array.push(object);
    map[key] = array;
}

function handleFriendships(friendships) {
    var friendships = JSON.parse(friendships);
    fillFriendshipMaps(friendships);
    for (var friendshipKey in friendshipMap) {
        $("#friendship-list").append(friendshipMap[friendshipKey]);
    }
}

function showMessagesForFriendship() {
    var mainBlock = $("#main-block");
    mainBlock.find(".friendship-messages").remove();
    mainBlock.append(friendshipMessageMap[activeFriendshipId]);
    mainBlock.show();
}

function getFriendFromFriendship(friendship) {
    for (var i = 0; i < friendship.profiles.length; i++) {
        var profile = friendship.profiles[i];
        if (profile.email != username) {
            return profile;
        }
    }
}

function hasFriendshipUnreadMessages(friendshipId) {
    console.log(unreadMessagesFromMe);
    console.log(unreadMessagesToMe);
    if (unreadMessagesFromMe[friendshipId] || unreadMessagesToMe[friendshipId]) {
        return true;
    } else {
        return false;
    }
}

function changeActiveFriendship(friendshipId) {
    changeActiveDialog(friendshipMap[friendshipId]);
    $("#main-block").append(friendshipMessageMap[friendshipId]);
}

function changeActiveDialog(element) {
    $(".list-group-item").removeClass("active");
    element.addClass("active");
}

function fillFriendshipMaps(friendships) {
    for (var i = 0; i < friendships.length; i++) {
        var friendshipItem = friendships[i];
        var friendshipId = friendshipItem.id;
        if (i == 0) {
            activeFriendshipId = friendshipId;
        }
        var messages = [];
        var friend = getFriendFromFriendship(friendshipItem);
        for (var j = 0; j < friendshipItem.messages.length; j++) {
            checkAndPutToUnread(friendshipItem.messages[j]);
            var message = new MessageObject(friend, friendshipItem.messages[j], username).build();
            messages.push(message);
        }
        var friendshipMessages = new FriendshipMessages(friendshipItem, username, messages).build();
        var friendship = new Friendship(friend, friendshipItem, friendshipItem.messages[0], hasFriendshipUnreadMessages(friendshipId)).build();
        friendshipMap[friendshipId] = friendship;
        friendshipMessageMap[friendshipId] = friendshipMessages;
    }
}

function sendMarkReadMessagesRequest(friendshipId) {
    var messages = unreadMessagesToMe[friendshipId];
    if (messages) {
        var request = new Object();
        request.friendshipId = friendshipId;
        request.messageModels = messages;
        send("/app/friendship/message/read", request);
    }
}

function handleMarkReadMessages(response) {
    var responseItem = JSON.parse(response);
    var friendshipId = responseItem.friendshipId;
    var messageModels = responseItem.messageModels;
    var messageMap = friendshipMessageMap[friendshipId];
    for (var i = 0; i < messageModels.length; i++) {
        messageMap.find(".messages").find(".media").filter(function (index) {
            return $(this).attr("data-id") === messageModels[i].id
        }).find(".panel-default").removeClass("unread-message");
    }
}

$(document).ready(function () {
    $(".dialog").click(function () {
        var friendShipId = $(this).attr("data-id");
        activeFriendshipId = friendShipId;
        changeActiveDialog($(this).parent());
        showMessagesForFriendship();
        $(this).parent().removeClass("unread-message");
        sendMarkReadMessagesRequest(friendShipId);
    });

    $("#send-button").click(function () {
        var parent = $(this).parent().parent();
        var messageInput = parent.find(".share-text");
        var messageContent = messageInput.val();
        var friendshipId = $(this).attr("data-id");
        var messageItem = new Object();
        messageItem.content = messageContent;
        messageItem.friendshipId = friendshipId;
        send("/app/friendship/message", messageItem);
        messageInput.val("");
    });

    $('#message-input').bind('keypress', function (e) {
        var code = e.keyCode || e.which;
        if (code == 13) {
            $("#send-button").trigger("click");
        }
    });
});

function connect() {
    var socket = new SockJS('/ws');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        console.log('Connected: ' + frame);
        username = frame.headers['user-name'];
        stompClient.subscribe("/user/exchange/errors", function (message) {
            $.notify(message, "error");
        });
        stompClient.subscribe("/user/friendships/last", function (friendshipResponse) {
            handleFriendships(friendshipResponse.body);
        });
        stompClient.subscribe("/user/friendships/message/new", function (newMessage) {
            handleNewMessage(newMessage.body);
        });
        stompClient.subscribe("/user/friendships/message/mark/read", function (markMessages) {
            handleMarkReadMessages(markMessages.body);
        });
        loadFriendships();
    });
}

$.notify.addStyle('incoming', {
    html: '<div><div class="clearfix">' +
    ' <div class="photo" data-notify-html="photo">' +
    ' </div> ' +
    '<div class="incoming-content">' +
    ' <span class="user" data-notify-text="user"></span>' +
    ' <div class="message" data-notify-text="message"></div> </div> </div></div>'
});