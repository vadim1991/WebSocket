package com.social.net.repository.profile;


import com.social.net.entity.Profile;
import org.springframework.data.repository.CrudRepository;

public interface ProfileRepository extends CrudRepository<Profile, String> {

    Profile findByEmail(String email);

}
