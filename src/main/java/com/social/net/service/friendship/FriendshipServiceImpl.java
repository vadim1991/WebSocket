package com.social.net.service.friendship;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.repository.friendship.FriendshipRepositoryImpl;
import com.social.net.service.generic.GenericServiceImpl;
import com.social.net.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service
@EnableTransactionManagement
@Transactional
public class FriendshipServiceImpl extends GenericServiceImpl<Friendship, FriendshipRepositoryImpl> implements FriendshipService {

    @Autowired
    @Qualifier("friendshipRepository")
    @Override
    public void setRepository(FriendshipRepositoryImpl repository) {
        super.setRepository(repository);
    }

    @Override
    public void addMessageToTopic(Message message, String friendshipId) {
        Friendship friendship = repository.getById(friendshipId);
        if (friendship != null) {
            message.setId(Util.generateStringKey());
            friendship.getMessages().add(message);
            repository.update(friendship);
        } else {
            throw new IllegalArgumentException("Friendship doesn't exist");
        }
    }

    @Override
    public Friendship getByProfileIDs(String... ids) {
        return repository.getByProfileIDs(ids);
    }

    @Override
    public Friendship getByProfileIDs(String friendshipId, String... ids) {
        return repository.getByProfileIDs(friendshipId, ids);
    }
}
