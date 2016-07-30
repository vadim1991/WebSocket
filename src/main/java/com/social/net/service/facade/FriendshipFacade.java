package com.social.net.service.facade;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.Profile;
import com.social.net.entity.dto.FriendshipRequest;
import com.social.net.entity.dto.MessageDto;
import com.social.net.entity.model.MessageModel;
import com.social.net.service.friendship.FriendshipService;
import com.social.net.service.mapper.MessageMapper;
import com.social.net.service.profile.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FriendshipFacade {

    @Autowired
    private FriendshipService friendshipService;
    @Autowired
    private ProfileService profileService;

    public List<Friendship> getFriendships(FriendshipRequest request) {
        return friendshipService.getFriendshipsSortByDate(request);
    }

    public Pair<MessageModel, Friendship> addMessageToFriendship(String email, MessageDto messageDto) {
        Profile profile = profileService.findByEmail(email);
        Message message = MessageMapper.mapDtoToEntity(messageDto, profile);
        Friendship friendship = friendshipService.addMessageToFriendship(message, messageDto.getFriendshipId());
        MessageModel messageModel = MessageMapper.mapEntityToModel(message);
        messageModel.setFriendshipId(friendship.getId());
        return Pair.of(messageModel, friendship);
    }

}
