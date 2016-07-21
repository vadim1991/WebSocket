package com.social.net.controller;

import com.social.net.entity.AuthenticationBean;
import com.social.net.service.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import static com.social.net.datamodel.URL.AUTHENTICATION_CHANNEL;
import static com.social.net.datamodel.URL.TOPIC_AUTHENTICATION;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Controller
public class AuthenticationController {

    @Autowired
    private AuthenticationService authenticationService;
    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @MessageMapping(AUTHENTICATION_CHANNEL)
    public void authenticate(AuthenticationBean requestBean) throws Exception {
        AuthenticationBean responseAuthenticationBean = authenticationService.authenticateProfile(requestBean);
        messagingTemplate.convertAndSend(TOPIC_AUTHENTICATION + requestBean.getSequenceID(), responseAuthenticationBean);
    }

}
