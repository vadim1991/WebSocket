package com.social.net.repository.profile;

import com.social.net.entity.Profile;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public interface ProfileRepository {

    Profile getProfileByID(long id);

    Profile saveProfile(Profile profile);

    void removeProfile(Profile profile);

    Profile getByCredentials(String email, String password);

}
