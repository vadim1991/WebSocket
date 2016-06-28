package com.fasten.test.controller;

import com.fasten.test.entity.AuthenticationBean;
import com.fasten.test.service.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import static com.fasten.test.datamodel.URL.AUTHENTICATION_CHANNEL;
import static com.fasten.test.datamodel.URL.TOPIC_AUTHENTICATION;

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
