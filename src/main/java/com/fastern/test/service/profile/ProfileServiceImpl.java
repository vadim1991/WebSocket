package com.fastern.test.service.profile;

import com.fastern.test.entity.Profile;
import com.fastern.test.repository.profile.ProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Service("profileService")
@Transactional
@EnableTransactionManagement
public class ProfileServiceImpl implements ProfileService {

    @Autowired
    @Qualifier("profileRepository")
    private ProfileRepository repository;

    public Profile saveProfile(Profile profile) {
        return repository.saveProfile(profile);
    }

    public Profile getProfileById(long profileID) {
        return repository.getProfileByID(profileID);
    }

    public Profile getProfileByCredentials(String email, String password) {
        return repository.getByCredentials(email, password);
    }

    public Profile authenticateProfile(String email, String password) {
        return repository.getByCredentials(email, password);
    }
}
