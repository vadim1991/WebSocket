package com.social.net.entity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MessageRequest {

    private String friendshipId;
    private int offset;
    private int count;

}
