package com.social.net.controller;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.Profile;
import com.social.net.entity.dto.FriendshipRequest;
import com.social.net.entity.dto.MessageDto;
import com.social.net.entity.model.FriendshipModel;
import com.social.net.entity.model.MessageModel;
import com.social.net.service.facade.FriendshipFacade;
import com.social.net.service.friendship.FriendshipService;
import com.social.net.service.mapper.FriendshipMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.messaging.handler.annotation.MessageExceptionHandler;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;
import java.util.Set;

@Controller
public class FriendshipController {

    @Autowired
    private FriendshipService friendshipService;
    @Autowired
    private FriendshipFacade friendshipFacade;
    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @RequestMapping(value = "/friendships", method = RequestMethod.POST)
    public Friendship saveFriendShip(@RequestBody Friendship friendship) {
        System.out.println(friendship);
        return friendshipService.save(friendship);
    }

    @RequestMapping(value = "/friendship/{id}", method = RequestMethod.GET)
    public @ResponseBody Friendship getFriendship(@PathVariable String id) {
        return friendshipService.findById(id);
    }

    @RequestMapping(value = "/friendship/{id}/message", method = RequestMethod.POST)
    public @ResponseBody Message addMessage(@PathVariable String id, @RequestBody Message message) {
        friendshipService.addMessageToFriendship(message, id);
        return message;
    }

    @MessageMapping("/friendships")
    @SendToUser("/friendships/last")
    public Set<FriendshipModel> getTopics(Principal principal, FriendshipRequest request) {
        request.setEmail(principal.getName());
        List<Friendship> friendships = friendshipFacade.getFriendships(request);
        return FriendshipMapper.mapToModelSortedSet(friendships);
    }

    @MessageMapping("/friendship/message")
    public void getMessage(Principal principal, MessageDto messageDto) {
        Pair<MessageModel, Friendship> pair = friendshipFacade.addMessageToFriendship(principal.getName(), messageDto);
        for (Profile profile : pair.getSecond().getProfiles()) {
            messagingTemplate.convertAndSendToUser(profile.getEmail(), "/friendships/message/new", pair.getFirst());
        }
    }

    @MessageExceptionHandler
    @SendToUser(value = "/exchange/errors", broadcast = false)
    public String handleProfanity(Exception e) {
        System.out.println(e.getMessage());
        return e.getMessage();
    }

}
