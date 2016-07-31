package com.social.net.entity.dto;

import com.social.net.entity.model.MessageModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MarkReadRequest {

    private String friendshipId;
    private List<MessageModel> messageModels;

}
