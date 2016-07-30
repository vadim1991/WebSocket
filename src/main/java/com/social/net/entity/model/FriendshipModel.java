package com.social.net.entity.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.Set;

@Data
@NoArgsConstructor
public class FriendshipModel implements Comparable<FriendshipModel> {

    private String id;
    private Set<ProfileModel> profiles;
    private Set<MessageModel> messages;
    private boolean hasUnreadMessage;
    private Date updated;

    @Override
    public int compareTo(FriendshipModel friendshipModel) {
        return friendshipModel.updated.compareTo(this.updated);
    }
}
