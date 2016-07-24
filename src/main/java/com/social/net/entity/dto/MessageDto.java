package com.social.net.entity.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MessageDto {

    private String content;
    private long topicId;

}
