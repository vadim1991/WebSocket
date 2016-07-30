package com.social.net.service.mapper;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.Profile;
import com.social.net.entity.dto.MessageDto;
import com.social.net.entity.model.MessageModel;

import java.util.Date;
import java.util.Set;
import java.util.TreeSet;

import static java.util.stream.Collectors.toSet;

public class MessageMapper {

    public static MessageModel mapEntityToModel(Message message) {
        MessageModel messageModel = new MessageModel();
        messageModel.setContent(message.getContent());
        messageModel.setCreated(message.getTime());
        messageModel.setRead(message.isRead());
//        messageModel.setFriendshipId(message.getFriendship().getId());
        messageModel.setOwner(ProfileMapper.mapEntityToModel(message.getOwner()));
        return messageModel;
    }

    public static Set<MessageModel> mapToModelSortedSet(Set<Message> messages) {
        Set<MessageModel> collect = messages.stream()
                .map(MessageMapper::mapEntityToModel)
                .collect(toSet());
        return new TreeSet<>(collect);
    }

    public static Message mapDtoToEntity(MessageDto messageDto, Profile profile) {
        Friendship friendship = new Friendship();
        friendship.setId(messageDto.getFriendshipId());
        Message message = new Message();
        message.setContent(messageDto.getContent());
        message.setTime(new Date());
//        message.setFriendship(friendship);
        message.setOwner(profile);
        return message;
    }

}
