package com.social.net.service.friendship;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.service.generic.GenericService;

public interface FriendshipService extends GenericService<Friendship> {

    void addMessageToTopic(Message message, String friendshipId);

    Friendship getByProfileIDs(String... ids);

    Friendship getByProfileIDs(String friendshipId, String... ids);

}
