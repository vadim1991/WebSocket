package com.fasten.test.repository.token;

import com.fasten.test.entity.Token;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public interface TokenRepository {

    Token saveToken(Token token, long profileID);

    void removeToken(Token token);

    Token saveToken(Token token);

    Token getTokenByProfile(long profileID);

}
