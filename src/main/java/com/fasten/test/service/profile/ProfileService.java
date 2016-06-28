package com.fasten.test.service.profile;

import com.fasten.test.entity.Profile;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public interface ProfileService {

    Profile saveProfile(Profile profile);

    Profile getProfileById(long profileID);

    void removeProfile(Profile profile);

    Profile getProfileByCredentials(String email, String password);

}
