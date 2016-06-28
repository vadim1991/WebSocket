package com.fasten.test.repository.profile;

import com.fasten.test.datamodel.Constants;
import com.fasten.test.entity.Profile;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

    @Override
    public void removeProfile(Profile profile) {
        getCurrentSession().delete(profile);
    }

    public Profile getByCredentials(String email, String password) {
        Query query = getCurrentSession().createQuery(com.fasten.test.datamodel.Query.GET_BY_CREDS_QUERY);
        query.setParameter(Constants.EMAIL, email);
        query.setParameter(Constants.PASSWORD, password);
        return (Profile) query.uniqueResult();
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

}
