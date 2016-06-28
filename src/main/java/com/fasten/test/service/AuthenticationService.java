package com.fasten.test.service;

import com.fasten.test.datamodel.Constants;
import com.fasten.test.entity.AuthenticationBean;
import com.fasten.test.entity.Profile;
import com.fasten.test.entity.Token;
import com.fasten.test.service.token.TokenService;
import com.fasten.test.service.profile.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

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
        String email = requestBean.getData().get(Constants.EMAIL);
        String password = requestBean.getData().get(Constants.PASSWORD);
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
        data.put(Constants.API_TOKEN, token.getToken());
        data.put(Constants.API_TOKEN_EXPIRATION_DATE, token.getExpirationDate().toString());
        return new AuthenticationBean(Constants.CUSTOMER_API_TOKEN, sequenceID, data);
    }

    private AuthenticationBean getErrorAuthenticationBean(String sequenceID) {
        Map<String, String> data = new HashMap<String, String>();
        data.put(Constants.ERROR_DESCRIPTION, Constants.CUSTOMER_NOT_FOUND_VALUE);
        data.put(Constants.ERROR_CODE, Constants.CUSTOMER_NOT_FOUND_CODE_VALUE);
        return new AuthenticationBean(Constants.CUSTOMER_ERROR_TYPE, sequenceID, data);
    }

}
