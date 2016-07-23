package com.social.net.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {

    @RequestMapping(value = "/messages")
    public String messagePage() {
        return "messages";
    }

}
