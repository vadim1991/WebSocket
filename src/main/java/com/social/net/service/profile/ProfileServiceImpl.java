package com.social.net.service.profile;

import com.social.net.entity.Profile;
import com.social.net.repository.profile.ProfileRepositoryImpl;
import com.social.net.service.generic.GenericServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service("profileService")
@Transactional
@EnableTransactionManagement
public class ProfileServiceImpl extends GenericServiceImpl<Profile, ProfileRepositoryImpl> implements ProfileService {

    @Autowired
    @Qualifier("profileRepository")
    @Override
    public void setRepository(ProfileRepositoryImpl repository) {
        super.setRepository(repository);
    }

    public Profile getProfileByCredentials(String email, String password) {
        return repository.getByCredentials(email, password);
    }

}
