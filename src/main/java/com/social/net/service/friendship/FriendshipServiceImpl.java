package com.social.net.service.friendship;

import com.social.net.entity.FriendShip;
import com.social.net.entity.Message;
import com.social.net.repository.friendship.FriendshipRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service
@EnableTransactionManagement
@Transactional
public class FriendshipServiceImpl implements FriendshipService {

    @Autowired
    @Qualifier("friendshipRepository")
    private FriendshipRepository friendshipRepository;

    @Override
    public FriendShip save(FriendShip friendShip) {
        return friendshipRepository.save(friendShip);
    }

    @Override
    public void addMessageToTopic(Message message, long friendshipId) {
        FriendShip friendship = friendshipRepository.getFriendship(friendshipId);
        if (friendship != null) {
            friendship.getMessages().add(message);
            friendshipRepository.update(friendship);
        } else {
            throw new IllegalArgumentException("Friendship doesn't exist");
        }
    }

    @Override
    public FriendShip getFriendship(long id) {
        return friendshipRepository.getFriendship(id);
    }

    @Override
    public FriendShip getByProfileIDs(long... ids) {
        return friendshipRepository.getByProfileIDs(ids);
    }

    @Override
    public FriendShip getByProfileIDs(long friendshipId, long... ids) {
        return friendshipRepository.getByProfileIDs(friendshipId, ids);
    }
}
