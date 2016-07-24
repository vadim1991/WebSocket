var stompClient = null;

$(document).ready(
    connect(3)
);

function getTopics() {
    send("/app/topics", new Object());
}

$(".dialog").click(function (event) {
    if ($(this).hasClass("active")) {
        return;
    }
    var topicId = $(this).attr("data-id");
    var parent = $(this).parent();
    changeActiveDialog(this, topicId);
    var friend = new Object();
    friend.photo = parent.find(".media-object").attr("src");
    friend.initials = parent.find(".user").text();
    var profile = new Object();
    profile.id = "1";
    profile.photo = "";
    var container = $("#message-block");
    container.find(".media").remove();
    var messageList = getMessageList();
    for (var i = 0; i < messageList.length; i++) {
        var messageData = messageList[i];
        var message = new MessageObject(friend, messageData, profile).build();
        container.append(message);
    }
});

$("#send-button").click(function () {
    var parent = $(this).parent().parent();
    var messageInput = parent.find(".share-text");
    var messageContent = messageInput.val();
    var topicId = $(this).attr("data-id");
    var messageItem = new Object();
    messageItem.content = messageContent;
    messageItem.topicId = topicId;
    console.log(messageItem);
    send("/app/messages/push", messageItem);
    messageInput.val("");
});

function changeActiveDialog(element, topicId) {
    var parent = $(element).parent();
    $(".list-group-item").removeClass("active");
    parent.addClass("active");
    $("#send-button").attr("data-id", topicId);
    $("#send-button").attr("href", "#" + topicId);
    var messageInput = $("#send-button").parent().parent().find(".share-text");
    messageInput.val("");
}

function getMessageList() {
    var messages = [];
    var message1 = new Object();
    message1.id = "1";
    message1.ownerId = "1";
    message1.content = "Hello, my name is Vadym";
    var message2 = new Object();
    message2.id = "2";
    message2.ownerId = "1";
    message2.content = "Hello! Nice to meet you, Vadym!";
    var message3 = new Object();
    message3.id = "2";
    message3.ownerId = "2";
    message3.content = "Hello! Nice to meet you, Vadym!";
    messages.push(message3);
    messages.push(message2);
    messages.push(message1);
    return messages;
}

function connect(profileId) {
    var socket = new SockJS('/messages');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        console.log('Connected: ' + frame);
        stompClient.subscribe("/profile/" + profileId + "/messages/new", function (messageResponse) {
            handleNewMessage(messageResponse.body);
        });
        stompClient.subscribe("/profile/" + profileId + "/topic/messages", function (messageResponse) {
            receivedMessages(messageResponse.body);
        });
        stompClient.subscribe("/profile/" + profileId + "/topics", function (topicsResponse) {
            handleTopics(topicsResponse.body);
        });
        getTopics();
    });
}

function send(topicURL, object) {
    stompClient.send(topicURL, {}, JSON.stringify(object))
}

function disconnect() {
    stompClient.disconnect();
    console.log("Disconnected");
}

function handleNewMessage(message) {
    console.log(message)
}

function handleTopics(topics) {
    console.log("handle topics")
}

function receivedMessages(messageList) {
    console.log(messageList);
}