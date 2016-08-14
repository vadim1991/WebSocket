package com.social.net.entity.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Typing {

    private String username;
    private String friendshipId;
    private ProfileModel profile;
    private boolean isTyping;

}
