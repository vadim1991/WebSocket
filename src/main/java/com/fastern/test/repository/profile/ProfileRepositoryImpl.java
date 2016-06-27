package com.fastern.test.repository.profile;

import com.fastern.test.entity.Profile;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import static com.fastern.test.datamodel.Constants.EMAIL;
import static com.fastern.test.datamodel.Constants.PASSWORD;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Repository("profileRepository")
public class ProfileRepositoryImpl implements ProfileRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public Profile getProfileByID(long id) {
        return (Profile) getCurrentSession().get(Profile.class, id);
    }

    public Profile saveProfile(Profile profile) {
        getCurrentSession().saveOrUpdate(profile);
        return profile;
    }

    public Profile getProfileByEmail(String email) {
        Query query = getCurrentSession().createQuery(com.fastern.test.datamodel.Query.GET_BY_EMAIL_QUERY);
        query.setParameter(EMAIL, email);
        return (Profile) query.uniqueResult();
    }

    public Profile getByCredentials(String email, String password) {
        Query query = getCurrentSession().createQuery(com.fastern.test.datamodel.Query.GET_BY_CREDS_QUERY);
        query.setParameter(EMAIL, email);
        query.setParameter(PASSWORD, password);
        return (Profile) query.uniqueResult();
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

}
