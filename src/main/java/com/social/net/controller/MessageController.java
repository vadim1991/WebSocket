package com.social.net.controller;

import com.social.net.datamodel.URL;
import com.social.net.entity.dto.MessageDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @RequestMapping(value = "/messages")
    public String messagePage() {
        return "messages";
    }

    @MessageMapping("/messages/push")
    public void getMessage(MessageDto messageDto) {
        System.out.println(messageDto);
        long profileId = 3;
        messagingTemplate.convertAndSend(String.format(URL.PROFILE_MESSAGES_NEW_TOPIC, profileId), messageDto);
    }

}
