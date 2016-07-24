package com.social.net.service.profile;

import com.social.net.entity.Profile;
import com.social.net.service.generic.GenericService;

public interface ProfileService extends GenericService<Profile> {

    Profile getProfileByCredentials(String email, String password);

}
