function FriendshipMessages(friendship, username, messages) {
    this.friendship = friendship;
    this.username = username;
    this.messages = messages;
}

FriendshipMessages.prototype.getStub = function () {
    var clone = $("#message-block").clone(true);
    clone.removeClass("hidden");
    clone.removeAttr("id");
    return clone;
};

FriendshipMessages.prototype.build = function () {
    var stub = this.getStub();
    stub.find("#send-button").attr("data-id", this.friendship.id);
    stub.find(".messages").append(this.messages);
    return stub;
};