package com.social.net.repository.friendship;

import com.social.net.entity.FriendShip;

public interface FriendshipRepository {

    FriendShip save(FriendShip friendShip);

    void update(FriendShip friendShip);

    FriendShip getFriendship(long id);

    FriendShip getByProfileIDs(long ... ids);

    FriendShip getByProfileIDs(long friendshipId, long ... ids);

}
