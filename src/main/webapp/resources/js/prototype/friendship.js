function Friendship(friend, friendshipId, lastMessage) {
    this.friend = friend;
    this.friendshipId = friendshipId;
    this.lastMessage = lastMessage;
}

Friendship.prototype.getStub = function () {
    var clone = $("#friendship").clone(true);
    clone.removeClass("hidden");
    clone.removeAttr("id");
    return clone;
};

Friendship.prototype.build = function () {
    var stub = this.getStub();
    stub.find(".dialog").attr("data-id", this.friendshipId);
    stub.find(".media-object").attr("src", this.friend.photo);
    stub.find(".user").text(this.friend.firstName + " " + this.friend.lastName);
    if (this.lastMessage) {
        stub.find(".message").text(this.lastMessage.content);
    }
    return stub;
};