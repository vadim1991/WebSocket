package com.social.net.service.profile;

import com.social.net.entity.Profile;
import com.social.net.repository.profile.ProfileRepository;
import com.social.net.util.Util;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service("profileService")
@Transactional
@EnableTransactionManagement
public class ProfileServiceImpl implements ProfileService {

    @Autowired
    private ProfileRepository profileRepository;

    @Override
    public Profile findByEmail(String email) {
        return profileRepository.findByEmail(email);
    }

    @Override
    public Profile save(Profile profile) {
        if (StringUtils.isBlank(profile.getId())) {
            profile.setId(Util.generateStringKey());
        }
        return profileRepository.save(profile);
    }

    @Override
    public Profile findById(String id) {
        return profileRepository.findOne(id);
    }
}
