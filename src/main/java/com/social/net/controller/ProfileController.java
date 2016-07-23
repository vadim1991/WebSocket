package com.social.net.controller;

import com.social.net.datamodel.URL;
import com.social.net.entity.Profile;
import com.social.net.service.profile.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProfileController {

    @Autowired
    @Qualifier("profileService")
    private ProfileService profileService;

    @RequestMapping(value = URL.PROFILES_URL, method = RequestMethod.POST)
    public @ResponseBody
    Profile saveProfile(@RequestBody Profile profile) {
        return profileService.saveProfile(profile);
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profiles() {
        profileService.saveProfile(new Profile());
        return "profile";
    }
}
