package com.social.net.service.mapper;

import com.social.net.entity.Profile;
import com.social.net.entity.model.ProfileModel;

import java.util.Set;

import static java.util.stream.Collectors.toSet;

public class ProfileMapper {

    public static ProfileModel mapEntityToModel(Profile profile) {
        ProfileModel profileModel = new ProfileModel();
        profileModel.setEmail(profile.getEmail());
        profileModel.setFirstName(profile.getFirstName());
        profileModel.setLastName(profile.getLastName());
        profileModel.setPhoto(profile.getPhoto());
        return profileModel;
    }

    public static Set<ProfileModel> mapToModelSortedSet(Set<Profile> profiles) {
        return profiles.stream()
                .map(ProfileMapper::mapEntityToModel)
                .collect(toSet());
    }

}
