package com.fastern.test.service.token;

import com.fastern.test.entity.Token;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public interface TokenService {

    void invalidateToken(long profileID);

    Token setNewTokenToProfile(long profileID);

    Token generateNewToken();

    Token getTokenByProfile(long profile);

    Token saveToken(Token token, long profileID);

}
