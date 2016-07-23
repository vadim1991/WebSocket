package com.social.net.repository.profile;

import com.social.net.datamodel.Constants;
import com.social.net.entity.FriendShip;
import com.social.net.entity.Message;
import com.social.net.entity.Profile;
import com.social.net.repository.generic.GenericRepository;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Collections;
import java.util.Date;
import java.util.HashSet;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Repository("profileRepository")
public class ProfileRepositoryImpl extends GenericRepository implements ProfileRepository {

    public Profile getProfileByID(long id) {
        return (Profile) getCurrentSession().get(Profile.class, id);
    }

    public Profile saveProfile(Profile profile) {
        Session currentSession = getCurrentSession();
//        Profile profile1 = new Profile();
//        profile.setEmail("first");
//        profile1.setEmail("second");
//        currentSession.save(profile);
//        currentSession.save(profile1);
//        HashSet<Profile> profiles = new HashSet<>();
//        profiles.add(profile);
//        profiles.add(profile1);
//        FriendShip friendShip = new FriendShip();
//        friendShip.setUpdateTime(new Date());
//        friendShip.setMessages(Collections.singleton(new Message("Hello", 1l, 2l)));
//        friendShip.setUpdateTime(new Date());
//        friendShip.setProfiles(profiles);
//        currentSession.save(friendShip);

        Criteria criteria = currentSession.createCriteria(FriendShip.class);
        criteria.createAlias("profiles", "profile");
        criteria.add(Restrictions.eq("profile.id", 3L));
        System.out.println(criteria.uniqueResult());
        return profile;
    }

    @Override
    public void removeProfile(Profile profile) {
        getCurrentSession().delete(profile);
    }

    public Profile getByCredentials(String email, String password) {
        Query query = getCurrentSession().createQuery(com.social.net.datamodel.Query.GET_BY_CREDS_QUERY);
        query.setParameter(Constants.EMAIL, email);
        query.setParameter(Constants.PASSWORD, password);
        return (Profile) query.uniqueResult();
    }

}
