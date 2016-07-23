package com.social.net.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping(value = "/")
    public String getHomePage() {
        return "index";
    }

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

}
