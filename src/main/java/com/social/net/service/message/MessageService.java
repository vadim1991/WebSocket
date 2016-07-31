package com.social.net.service.message;

import com.social.net.entity.Message;
import com.social.net.entity.dto.MessageRequest;

import java.util.List;

public interface MessageService {

    Message save(Message message);

    void addMessageToFriendship(Message message, String friendshipId);

    List<Message> findMessagesByPagination(MessageRequest messageRequest);

    List<Message> findByFriendshipIdLast(String friendshipId);

    void markMessageRead(boolean isRead, String messageId);

}
