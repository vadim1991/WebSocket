package com.fastern.test.service;

import com.fastern.test.entity.AuthenticationBean;
import com.fastern.test.entity.Profile;
import com.fastern.test.entity.Token;
import com.fastern.test.service.profile.ProfileService;
import com.fastern.test.service.token.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

import static com.fastern.test.datamodel.Constants.*;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Service
@Transactional
@EnableTransactionManagement
public class AuthenticationService {

    @Autowired
    private ProfileService profileService;
    @Autowired
    private TokenService tokenService;

    public AuthenticationBean authenticateProfile(AuthenticationBean requestBean) {
        String email = requestBean.getData().get(EMAIL);
        String password = requestBean.getData().get(PASSWORD);
        String sequenceID = requestBean.getSequenceID();
        Profile profile = profileService.getProfileByCredentials(email, password);
        if (profile != null) {
            tokenService.invalidateToken(profile.getId());
            Token token = tokenService.setNewTokenToProfile(profile.getId());
            return getSuccessAuthenticationBean(token, sequenceID);
        } else {
            return getErrorAuthenticationBean(sequenceID);
        }
    }

    private AuthenticationBean getSuccessAuthenticationBean(Token token, String sequenceID) {
        Map<String, String> data = new HashMap<String, String>();
        data.put(API_TOKEN, token.getToken());
        data.put(API_TOKEN_EXPIRATION_DATE, token.getExpirationDate().toString());
        return new AuthenticationBean(CUSTOMER_API_TOKEN, sequenceID, data);
    }

    private AuthenticationBean getErrorAuthenticationBean(String sequenceID) {
        Map<String, String> data = new HashMap<String, String>();
        data.put(ERROR_DESCRIPTION, CUSTOMER_NOT_FOUND_VALUE);
        data.put(ERROR_CODE, CUSTOMER_NOT_FOUND_CODE_VALUE);
        return new AuthenticationBean(CUSTOMER_ERROR_TYPE, sequenceID, data);
    }

}
