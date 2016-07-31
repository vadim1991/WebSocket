package com.social.net.entity.model;

import com.social.net.entity.Friendship;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class MessageModel implements Comparable<MessageModel> {

    private String id;
    private String content;
    private ProfileModel owner;
    private FriendshipModel friendship;
    private Date created;
    private boolean isRead;

    @Override
    public int compareTo(MessageModel model) {
        return model.created.compareTo(this.created);
    }
}
