package com.fastern.test.controller;

import com.fastern.test.entity.AuthenticationBean;
import com.fastern.test.service.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Controller
public class AuthenticationController {

    @Autowired
    private AuthenticationService authenticationService;
    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @MessageMapping("/authentication/")
    public void authenticate(AuthenticationBean requestBean) throws Exception {
        AuthenticationBean responseAuthenticationBean = authenticationService.authenticateProfile(requestBean);
        messagingTemplate.convertAndSend("/topic/authentication/" + requestBean.getSequenceID(), responseAuthenticationBean);
    }

}
