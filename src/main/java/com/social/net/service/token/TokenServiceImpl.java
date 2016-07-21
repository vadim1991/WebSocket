package com.social.net.service.token;

import com.social.net.entity.Token;
import com.social.net.entity.TokenState;
import com.social.net.repository.token.TokenRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Service("tokenService")
@Transactional
@EnableTransactionManagement
public class TokenServiceImpl implements TokenService {

    @Autowired
    @Qualifier("tokenRepository")
    private TokenRepository repository;

    public void invalidateToken(long profileID) {
        Token token = getTokenByProfile(profileID);
        if (token != null) {
            token.setState(TokenState.EXPIRED);
            repository.saveToken(token);
        }
    }

    public Token generateNewToken() {
        Token token = new Token();
        token.setState(TokenState.ACTIVE);
        token.setExpirationDate(getDateForNewToken());
        token.setToken(UUID.randomUUID().toString());
        return token;
    }

    public Token setNewTokenToProfile(long profileID) {
        Token newToken = generateNewToken();
        return saveToken(newToken, profileID);
    }

    @Override
    public void removeToken(Token token) {
        repository.removeToken(token);
    }

    public Token getTokenByProfile(long profileID) {
        return repository.getTokenByProfile(profileID);
    }

    public Token saveToken(Token token, long profileID) {
        return repository.saveToken(token, profileID);
    }

    private Date getDateForNewToken() {
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        cal.add(Calendar.HOUR_OF_DAY, 1);
        return cal.getTime();
    }
}
