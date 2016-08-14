package com.social.net.controller;

import com.social.net.entity.Friendship;
import com.social.net.entity.Profile;
import com.social.net.entity.dto.MarkReadRequest;
import com.social.net.entity.dto.MessageDto;
import com.social.net.entity.model.Typing;
import com.social.net.service.facade.FriendshipFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageExceptionHandler;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
public class MessageController {

    @Autowired
    private SimpMessagingTemplate messagingTemplate;
    @Autowired
    private FriendshipFacade friendshipFacade;

    @RequestMapping(value = "/messages")
    public String messagePage() {
        return "messages";
    }

    @MessageMapping("/chat/message")
    public void getMessage(MessageDto messageDto, Principal principal) {
        System.out.println(messageDto);
        long profileId = 3;
        messagingTemplate.convertAndSendToUser(principal.getName(), "/topic/new", messageDto);
    }

    @MessageMapping("/friendship/message/read")
    public void getMessage(Principal principal, MarkReadRequest readRequest) {
        friendshipFacade.markMessagesRead(readRequest.getMessageModels());
        Friendship friendship = friendshipFacade.getFriendshipById(readRequest.getFriendshipId());
        friendship.getProfiles()
                .stream()
                .forEach(profile -> {
                    messagingTemplate.convertAndSendToUser(profile.getEmail(), "/friendships/message/mark/read", readRequest);
                });
    }

    @MessageMapping("/friendship/request/typing")
    public void processTyping(Principal principal, Typing typing) {
        Profile profileItem = friendshipFacade.getProfileByEmail(principal.getName());
        typing.setProfile(profileItem.toModel());
        Friendship friendship = friendshipFacade.getFriendshipById(typing.getFriendshipId());
        friendship.getProfiles().stream()
                .forEach(profile -> {
                    if (!profile.getEmail().equals(principal.getName())) {
                        messagingTemplate.convertAndSendToUser(profile.getEmail(), "/friendships/typing", typing);
                    }
                });
    }

    @MessageExceptionHandler
    @SendToUser(value = "/exchange/errors", broadcast = false)
    public String handleProfanity(Exception e) {
        System.out.println(e.getMessage());
        return e.getMessage();
    }

}
