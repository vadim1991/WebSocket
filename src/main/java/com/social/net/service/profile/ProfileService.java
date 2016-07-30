package com.social.net.service.profile;

import com.social.net.entity.Profile;

public interface ProfileService {

    Profile findByEmail(String email);

    Profile save(Profile profile);

    Profile findById(String id);

}
