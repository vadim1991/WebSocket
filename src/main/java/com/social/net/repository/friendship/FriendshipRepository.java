package com.social.net.repository.friendship;

import com.social.net.repository.generic.GenericRepository;

public interface FriendshipRepository<T> extends GenericRepository<T> {

    void update(T friendShip);

    T getByProfileIDs(String ... ids);

    T getByProfileIDs(String friendshipId, String ... ids);

}
