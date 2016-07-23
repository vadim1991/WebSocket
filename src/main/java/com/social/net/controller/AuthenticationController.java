package com.social.net.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class AuthenticationController {

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

//    @MessageMapping(AUTHENTICATION_CHANNEL)
//    public void authenticate(AuthenticationBean requestBean) throws Exception {
//        AuthenticationBean responseAuthenticationBean = authenticationService.authenticateProfile(requestBean);
//        messagingTemplate.convertAndSend(TOPIC_AUTHENTICATION + requestBean.getSequenceID(), responseAuthenticationBean);
//    }

}
