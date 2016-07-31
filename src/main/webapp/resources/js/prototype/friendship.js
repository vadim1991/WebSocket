function Friendship(friend, friendshipItem, lastMessage, hasUnreadMessage) {
    this.friend = friend;
    this.friendshipItem = friendshipItem;
    this.lastMessage = lastMessage;
    this.hasUnreadMessage = hasUnreadMessage;
}

Friendship.prototype.getStub = function () {
    var clone = $("#friendship").clone(true);
    clone.removeClass("hidden");
    clone.removeAttr("id");
    return clone;
};

Friendship.prototype.build = function () {
    var stub = this.getStub();
    if (this.hasUnreadMessage) {
        stub.addClass("unread-message");
    }
    stub.find(".dialog").attr("data-id", this.friendshipItem.id);
    stub.find(".media-object").attr("src", this.friend.photo);
    stub.find(".user").text(this.friend.firstName + " " + this.friend.lastName);
    if (this.lastMessage) {
        stub.find(".message").text(this.lastMessage.content);
    }
    return stub;
};