package com.fastern.test.repository.profile;

import com.fastern.test.entity.Profile;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public interface ProfileRepository {

    Profile getProfileByID(long id);

    Profile saveProfile(Profile profile);

    Profile getProfileByEmail(String email);

    Profile getByCredentials(String email, String password);

}
