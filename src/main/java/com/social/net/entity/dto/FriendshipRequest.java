package com.social.net.entity.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FriendshipRequest {

    private String profileId;
    private String email;
    private int offset;
    private int count;

}
