package com.social.net.repository.profile;

import com.social.net.datamodel.Constants;
import com.social.net.entity.Profile;
import com.social.net.repository.generic.GenericRepositoryImpl;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

@Repository("profileRepository")
public class ProfileRepositoryImpl extends GenericRepositoryImpl<Profile> implements ProfileRepository<Profile> {

    public ProfileRepositoryImpl() {
        setClazz(Profile.class);
    }

    public Profile getByCredentials(String email, String password) {
        Query query = getCurrentSession().createQuery(com.social.net.datamodel.Query.GET_BY_CREDS_QUERY);
        query.setParameter(Constants.EMAIL, email);
        query.setParameter(Constants.PASSWORD, password);
        return (Profile) query.uniqueResult();
    }

}
