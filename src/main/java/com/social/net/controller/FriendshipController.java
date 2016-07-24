package com.social.net.controller;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.service.friendship.FriendshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import static com.social.net.datamodel.URL.PROFILE_GET_TOPICS_URL;

@Controller
public class FriendshipController {

    @Autowired
    private FriendshipService friendshipService;
    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @RequestMapping(value = "/friendships", method = RequestMethod.POST)
    public Friendship saveFriendShip(@RequestBody Friendship friendship) {
        System.out.println(friendship);
        return friendshipService.save(friendship);
    }

    @RequestMapping(value = "/friendship/{id}", method = RequestMethod.GET)
    public
    @ResponseBody
    Friendship getFriendship(@PathVariable String id) {
        return friendshipService.getById(id);
    }

    @RequestMapping(value = "/friendship/{id}/message", method = RequestMethod.POST)
    public
    @ResponseBody
    Message addMessage(@PathVariable String id, @RequestBody Message message) {
        friendshipService.addMessageToTopic(message, id);
        return message;
    }

    @MessageMapping("/topics")
    public void getTopics(Message message) {
        long profileId = 3;
        System.out.println(message);
        messagingTemplate.convertAndSend(String.format(PROFILE_GET_TOPICS_URL, profileId), message);
    }

}
