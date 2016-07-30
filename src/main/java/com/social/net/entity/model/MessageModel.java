package com.social.net.entity.model;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class MessageModel implements Comparable<MessageModel> {

    private String content;
    private ProfileModel owner;
    private String friendshipId;
    private Date created;
    private boolean isRead;

    @Override
    public int compareTo(MessageModel model) {
        return model.created.compareTo(this.created);
    }
}
