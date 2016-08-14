package com.social.net.service.facade;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.Profile;
import com.social.net.entity.dto.FriendshipRequest;
import com.social.net.entity.dto.MessageDto;
import com.social.net.entity.model.FriendshipModel;
import com.social.net.entity.model.MessageModel;
import com.social.net.service.friendship.FriendshipService;
import com.social.net.service.mapper.FriendshipMapper;
import com.social.net.service.mapper.MessageMapper;
import com.social.net.service.message.MessageService;
import com.social.net.service.profile.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

@Service
@Transactional
public class FriendshipFacade {

    @Autowired
    private FriendshipService friendshipService;
    @Autowired
    private ProfileService profileService;
    @Autowired
    private MessageService messageService;

    public Friendship getFriendshipById(String id) {
        return friendshipService.findById(id);
    }

    public Set<FriendshipModel> getFriendshipModels(FriendshipRequest request) {
        Set<FriendshipModel> friendshipModels = new TreeSet<>();
        List<Friendship> friendships = friendshipService.getFriendshipsSortByDate(request);
        for (Friendship friendship : friendships) {
            List<Message> messages = messageService.findByFriendshipIdLast(friendship.getId());
            friendshipModels.add(FriendshipMapper.mapEntityToModel(friendship, messages));
        }
        return friendshipModels;
    }

    public Profile getProfileByEmail(String email) {
        return profileService.findByEmail(email);
    }

    public MessageModel addMessageToFriendship(String email, MessageDto messageDto) {
        Profile profile = profileService.findByEmail(email);
        Message message = MessageMapper.mapDtoToEntity(messageDto, profile);
        System.out.println(profile);
        System.out.println(message);
        Friendship friendship = friendshipService.findById(messageDto.getFriendshipId());
        if (friendship != null) {
            message.setFriendship(friendship);
            message = messageService.save(message);
        }
        return MessageMapper.mapEntityToModel(message);
    }

    public void markMessagesRead(List<MessageModel> models) {
        List<Message> messages = models.stream()
                .map(MessageMapper::mapModelToEntity)
                .collect(Collectors.toList());
        for (Message message : messages) {
//            message.setRead(true);
//            messageService.save(message);
            messageService.markMessageRead(true, message.getId());
        }
    }

}
