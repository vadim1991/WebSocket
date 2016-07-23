package com.social.net.entity;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "message")
public class Message implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String content;
    @Column(name = "sender_id")
    private long sender;
    @Column(name = "recipient_id")
    private long recipientId;
    private Date time;

    public Message() {
    }

    public Message(String content, long sender, long recipientId) {
        this.content = content;
        this.sender = sender;
        this.recipientId = recipientId;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public long getSender() {
        return sender;
    }

    public void setSender(long sender) {
        this.sender = sender;
    }

    public long getRecipientId() {
        return recipientId;
    }

    public void setRecipientId(long recipientId) {
        this.recipientId = recipientId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Message message = (Message) o;
        return id == message.id &&
                sender == message.sender &&
                Objects.equal(content, message.content);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id, content, sender);
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("id", id)
                .add("content", content)
                .add("sender", sender)
                .add("recipientId", recipientId)
                .add("time", time)
                .toString();
    }
}
