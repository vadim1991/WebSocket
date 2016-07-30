var stompClient = null;
var activeFriendshipId = null;
var username = null;
var friendshipOffset = 0;
var friendshipCount = 10;
var friendshipMessageMap = {};
var friendshipMap = {};

$(document).ready(
    connect("NftqRuhBbj")
);

function loadFriendships() {
    var request = new Object();
    request.offset = friendshipOffset;
    request.count = friendshipCount;
    send("/app/friendships", request);
    friendshipOffset += friendshipCount;
}

function connect(profileId) {
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
            console.log(newMessage.body);
            handleNewMessage(newMessage.body);
        });
        loadFriendships();
    });
}

function send(topicURL, object) {
    stompClient.send(topicURL, {}, JSON.stringify(object))
}

function disconnect() {
    stompClient.disconnect();
    console.log("Disconnected");
}

function handleNewMessage(messageJson) {
    var message = JSON.parse(messageJson);
    var friendshipMessage = friendshipMessageMap[message.friendshipId];
    var messageObject = new MessageObject(message.owner, message, username).build();
    friendshipMessage.find(".messages").prepend(messageObject);
    var friendship = friendshipMap[message.friendshipId];
    friendship.find(".message").text(message.content);
    friendship.addClass("unread-message");
}

function handleFriendships(friendships) {
    var friendships = JSON.parse(friendships);
    fillFriendshipMaps(friendships);
    changeActiveDialog(friendshipMap[activeFriendshipId]);
    fillMainBlock();
}

$(document).ready(function () {
    $(".dialog").click(function () {
        var friendShipId = $(this).attr("data-id");
        activeFriendshipId = friendShipId;
        changeActiveDialog($(this).parent());
        showMessagesForFriendship();
        $(this).parent().removeClass("unread-message");
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
            var message = new MessageObject(friend, friendshipItem.messages[j], username).build();
            messages.push(message);
        }
        var friendshipMessages = new FriendshipMessages(friendshipItem, username, messages).build();
        var friendship = new Friendship(friend, friendshipId, friendshipItem.messages[0]).build();
        friendshipMap[friendshipId] = friendship;
        friendshipMessageMap[friendshipId] = friendshipMessages;
    }
}

function fillMainBlock() {
    for (var friendshipKey in friendshipMap) {
        $("#friendship-list").append(friendshipMap[friendshipKey]);
    }
    $("#main-block").append(friendshipMessageMap[activeFriendshipId]);
}

function receivedMessages(messageList) {
    console.log(messageList);
}