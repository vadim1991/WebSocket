package com.social.net.service.mapper;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.Profile;
import com.social.net.entity.dto.MessageDto;
import com.social.net.entity.model.MessageModel;

import java.util.Collection;
import java.util.Date;
import java.util.Set;
import java.util.TreeSet;

import static java.util.stream.Collectors.toSet;

public class MessageMapper {

    public static MessageModel mapEntityToModel(Message message) {
        MessageModel messageModel = new MessageModel();
        messageModel.setId(message.getId());
        messageModel.setContent(message.getContent());
        messageModel.setCreated(message.getTime());
        messageModel.setRead(message.isRead());
        messageModel.setFriendship(FriendshipMapper.mapEntityToModel(message.getFriendship()));
        messageModel.setOwner(ProfileMapper.mapEntityToModel(message.getOwner()));
        return messageModel;
    }

    public static Message mapModelToEntity(MessageModel messageModel) {
        Message message = new Message();
        message.setId(messageModel.getId());
        return message;
    }

    public static Set<MessageModel> mapToModelSortedSet(Collection<Message> messages) {
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
        message.setFriendship(friendship);
        message.setOwner(profile);
        return message;
    }

}
