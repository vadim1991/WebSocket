package com.social.net.service.mapper;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.model.FriendshipModel;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import static java.util.stream.Collectors.toSet;

public class FriendshipMapper {

    public static FriendshipModel mapEntityToModel(Friendship friendship) {
        FriendshipModel friendshipModel = new FriendshipModel();
        friendshipModel.setId(friendship.getId());
        friendshipModel.setProfiles(ProfileMapper.mapToModelSortedSet(friendship.getProfiles()));
        friendshipModel.setUpdated(friendship.getUpdated());
        return friendshipModel;
    }

    public static FriendshipModel mapEntityToModel(Friendship friendship, List<Message> messages) {
        FriendshipModel friendshipModel = new FriendshipModel();
        friendshipModel.setId(friendship.getId());
        friendshipModel.setMessages(MessageMapper.mapToModelSortedSet(messages));
        friendshipModel.setProfiles(ProfileMapper.mapToModelSortedSet(friendship.getProfiles()));
        friendshipModel.setUpdated(friendship.getUpdated());
        return friendshipModel;
    }

    public static Set<FriendshipModel> mapToModelSortedSet(Collection<Friendship> friendship) {
        Set<FriendshipModel> collect = friendship.stream()
                .map(FriendshipMapper::mapEntityToModel)
                .collect(toSet());
        return new TreeSet<>(collect);
    }

}
