package com.social.net.service.message;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.dto.MessageRequest;
import com.social.net.repository.message.MessageRepository;
import com.social.net.util.Util;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public Message save(Message message) {
        if (StringUtils.isBlank(message.getId())) {
            message.setId(Util.generateStringKey());
        }
        messageRepository.save(message);
        return message;
    }

    @Override
    public void addMessageToFriendship(Message message, String friendshipId) {
        Friendship friendship = new Friendship();
        friendship.setId(friendshipId);
        message.setFriendship(friendship);
        save(message);
    }

    @Override
    public List<Message> findMessagesByPagination(MessageRequest messageRequest) {
        Sort sort = new Sort(Sort.Direction.DESC, "time");
        int pageNumber = messageRequest.getOffset() / messageRequest.getCount();
        Pageable pageable = new PageRequest(pageNumber, messageRequest.getCount(), sort);
        return messageRepository.findByFriendshipId(messageRequest.getFriendshipId(), pageable);

    }

    @Override
    public List<Message> findByFriendshipIdLast(String friendshipId) {
        return findMessagesByPagination(new MessageRequest(friendshipId, 0, 10));
    }

    @Override
    public void markMessageRead(boolean isRead, String messageId) {
        messageRepository.markMessageRead(isRead, messageId);
    }
}
