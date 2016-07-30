function MessageObject(friend, messageData, username) {
    this.friend = friend;
    this.message = messageData;
    this.username = username;
}

MessageObject.prototype.getStub = function () {
    var clone = $("#media").clone(true);
    clone.removeClass("hidden");
    clone.removeAttr("id");
    return clone;
};

MessageObject.prototype.build = function () {
    var stub = this.getStub();
    var isMessageFromMe = this.message.owner.email == this.username;
    if (isMessageFromMe) {
        stub.find(".media-left").remove();
        stub.find(".media-object").attr("src", "resources/images/guy-5.jpg");
        stub.find("#name").text("Me");
    } else {
        stub.find(".media-right").remove();
        stub.find(".media-object").attr("src", this.friend.photo);
        stub.find("#name").text(this.friend.firstName + " " + this.friend.lastName);
    }

    stub.find(".text-muted").text(this.message.time);
    stub.find(".panel-body").text(this.message.content);
    return stub;
};