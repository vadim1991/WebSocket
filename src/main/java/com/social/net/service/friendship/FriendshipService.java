package com.social.net.service.friendship;

import com.social.net.entity.FriendShip;
import com.social.net.entity.Message;

public interface FriendshipService {

    FriendShip save(FriendShip friendShip);

    void addMessageToTopic(Message message, long friendshipId);

    FriendShip getFriendship(long id);

    FriendShip getByProfileIDs(long... ids);

    FriendShip getByProfileIDs(long friendshipId, long... ids);

}
