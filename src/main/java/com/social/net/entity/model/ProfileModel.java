package com.social.net.entity.model;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProfileModel {

    private String email;
    private String photo;
    private String firstName;
    private String lastName;

}
