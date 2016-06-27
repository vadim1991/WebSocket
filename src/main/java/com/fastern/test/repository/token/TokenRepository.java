package com.fastern.test.repository.token;

import com.fastern.test.entity.Token;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public interface TokenRepository {

    Token getTokenByValue(String value);

    Token saveToken(Token token, long profileID);

    Token saveToken(Token token);

    Token getTokenByProfile(long profileID);

}
