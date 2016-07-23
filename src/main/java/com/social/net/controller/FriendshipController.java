package com.social.net.controller;

import com.social.net.entity.FriendShip;
import com.social.net.entity.Message;
import com.social.net.service.friendship.FriendshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class FriendshipController {

    @Autowired
    private FriendshipService friendshipService;

    @RequestMapping(value = "/friendship/{id}", method = RequestMethod.GET)
    public @ResponseBody FriendShip getFriendship(@PathVariable long id) {
        System.out.println(id);
        return friendshipService.getFriendship(id);
    }

    @RequestMapping(value = "/friendship/{id}/message", method = RequestMethod.POST)
    public @ResponseBody Message addMessage(@PathVariable long id, @RequestBody Message message) {
        friendshipService.addMessageToTopic(message, id);
        return message;
    }

}
