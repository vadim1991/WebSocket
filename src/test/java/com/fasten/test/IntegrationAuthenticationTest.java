package com.fasten.test;

import com.fasten.test.entity.AuthenticationBean;
import com.fasten.test.entity.Profile;
import com.fasten.test.entity.Token;
import com.fasten.test.entity.TokenState;
import com.fasten.test.service.AuthenticationService;
import com.fasten.test.service.profile.ProfileService;
import com.fasten.test.service.token.TokenService;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.HashMap;
import java.util.Map;

import static com.fasten.test.datamodel.Constants.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/configs/root-context.xml")
public class IntegrationAuthenticationTest {

    public static final String CORRECT_EMAIL = "test_ivan_ivanov@gmail.com";
    public static final String WRONG_EMAIL = "test_ivan_ivanov@mail.ru";
    public static final String CORRECT_PASSWORD = "12345";
    public static final String CUSTOMER_LOGIN = "CUSTOMER_LOGIN";
    public static final String SEQUENCE_ID = "123456789";

    @Autowired
    private AuthenticationService authenticationService;
    @Autowired
    private ProfileService profileService;
    @Autowired
    private TokenService tokenService;
    private Profile profile;

    @Before
    public void setup() {
        profile = profileService.saveProfile(getProfileForTest());
    }

    @After
    public void clear() {
        profileService.removeProfile(profile);
    }

    @Test
    public void testSaveProfile() {
        assertEquals(profile, profileService.getProfileByCredentials(CORRECT_EMAIL, CORRECT_PASSWORD));
    }

    @Test
    public void testSuccessAuthentication() {
        AuthenticationBean authenticateRequest = getAuthenticateRequest(CORRECT_EMAIL);
        AuthenticationBean authenticationResponse = authenticationService.authenticateProfile(authenticateRequest);
        assertEquals(authenticationResponse.getType(), CUSTOMER_API_TOKEN);
        Token token = tokenService.getTokenByProfile(profile.getId());
        assertNotNull(token);
        Assert.assertEquals(token.getState(), TokenState.ACTIVE);
        tokenService.removeToken(token);
    }

    @Test
    public void testErrorAuthentication() {
        AuthenticationBean authenticateRequest = getAuthenticateRequest(WRONG_EMAIL);
        AuthenticationBean authenticationResponse = authenticationService.authenticateProfile(authenticateRequest);
        assertEquals(authenticationResponse.getType(), CUSTOMER_ERROR_TYPE);
    }

    private Profile getProfileForTest() {
        Profile profile = new Profile();
        profile.setEmail(CORRECT_EMAIL);
        profile.setPassword(CORRECT_PASSWORD);
        return profile;
    }

    private AuthenticationBean getAuthenticateRequest(String email) {
        Map<String, String> data = new HashMap<>();
        data.put(EMAIL, email);
        data.put(PASSWORD, CORRECT_PASSWORD);
        return new AuthenticationBean(CUSTOMER_LOGIN, SEQUENCE_ID, data);
    }


}
