package com.fastern.test.controller;

import com.fastern.test.entity.Profile;
import com.fastern.test.service.profile.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Controller
public class ProfileController {

    @Autowired
    @Qualifier("profileService")
    private ProfileService profileService;

    @RequestMapping(value = "/profiles", method = RequestMethod.POST)
    public @ResponseBody Profile saveProfile(@RequestBody Profile profile) {
        return profileService.saveProfile(profile);
    }

}
