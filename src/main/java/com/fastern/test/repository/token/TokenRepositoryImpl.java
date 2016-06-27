package com.fastern.test.repository.token;

import com.fastern.test.entity.Profile;
import com.fastern.test.entity.Token;
import com.fastern.test.entity.TokenState;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import static com.fastern.test.datamodel.Constants.PROFILE_ID;
import static com.fastern.test.datamodel.Constants.STATE;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Repository("tokenRepository")
public class TokenRepositoryImpl implements TokenRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public Token getTokenByValue(String value) {
        return (Token) getCurrentSession().get(Token.class, value);
    }

    public Token saveToken(Token token, long profileID) {
        Session currentSession = getCurrentSession();
        Profile profile = (Profile) currentSession.load(Profile.class, profileID);
        token.setProfile(profile);
        currentSession.saveOrUpdate(token);
        return token;
    }

    public Token saveToken(Token token) {
        getCurrentSession().saveOrUpdate(token);
        return token;
    }

    public Token getTokenByProfile(long profileID) {
        Session currentSession = getCurrentSession();
        Query query = currentSession.createQuery(com.fastern.test.datamodel.Query.GET_BY_PROFILE_TOKEN);
        query.setParameter(PROFILE_ID, profileID);
        query.setParameter(STATE, TokenState.ACTIVE);
        return (Token) query.uniqueResult();
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
