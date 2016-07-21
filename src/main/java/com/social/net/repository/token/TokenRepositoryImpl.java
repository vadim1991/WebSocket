package com.social.net.repository.token;

import com.social.net.datamodel.Constants;
import com.social.net.entity.Profile;
import com.social.net.entity.Token;
import com.social.net.entity.TokenState;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Repository("tokenRepository")
public class TokenRepositoryImpl implements TokenRepository {

    @Autowired
    private SessionFactory sessionFactory;

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

    public void removeToken(Token token) {
        getCurrentSession().delete(token);
    }


    public Token getTokenByProfile(long profileID) {
        Session currentSession = getCurrentSession();
        Query query = currentSession.createQuery(com.social.net.datamodel.Query.GET_BY_PROFILE_TOKEN);
        query.setParameter(Constants.PROFILE_ID, profileID);
        query.setParameter(Constants.STATE, TokenState.ACTIVE);
        return (Token) query.uniqueResult();
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
