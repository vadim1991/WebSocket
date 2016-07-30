package com.social.net.controller;

import com.social.net.entity.dto.MessageDto;
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

    @MessageExceptionHandler
    @SendToUser(value = "/exchange/errors", broadcast = false)
    public String handleProfanity(Exception e) {
        System.out.println(e.getMessage());
        return e.getMessage();
    }

}
