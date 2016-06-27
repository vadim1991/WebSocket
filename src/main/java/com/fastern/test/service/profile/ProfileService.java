package com.fastern.test.service.profile;

import com.fastern.test.entity.Profile;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public interface ProfileService {

    Profile saveProfile(Profile profile);

    Profile getProfileById(long profileID);

    Profile getProfileByCredentials(String email, String password);

    Profile authenticateProfile(String email, String password);

}
