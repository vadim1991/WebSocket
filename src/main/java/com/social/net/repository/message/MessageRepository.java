package com.social.net.repository.message;

import com.social.net.entity.Message;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, String> {

    List<Message> findByFriendshipId(String friendshipId, Pageable pageable);

    @Modifying
    @Query("update Message m set m.isRead = ?1 where m.id = ?2")
    void markMessageRead(boolean isRead, String messageId);

}
