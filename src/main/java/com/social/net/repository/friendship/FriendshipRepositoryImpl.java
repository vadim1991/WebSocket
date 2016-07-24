package com.social.net.repository.friendship;

import com.social.net.entity.Friendship;
import com.social.net.repository.generic.GenericRepositoryImpl;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("friendshipRepository")
public class FriendshipRepositoryImpl extends GenericRepositoryImpl<Friendship> implements FriendshipRepository<Friendship> {

    public FriendshipRepositoryImpl() {
        setClazz(Friendship.class);
    }

    @Override
    public void update(Friendship friendShip) {
        getCurrentSession().update(friendShip);
    }

    @Override
    public Friendship getByProfileIDs(String... ids) {
        Criteria criteria = fillCriteria(ids);
        Friendship result = (Friendship) criteria.uniqueResult();
        System.out.println(result);
        return result;
    }

    @Override
    public Friendship getByProfileIDs(String friendshipId, String... ids) {
        Criteria criteria = fillCriteria(ids);
        criteria.add(Restrictions.eq("id", friendshipId));
        return (Friendship) criteria.uniqueResult();
    }

    private Criteria fillCriteria(String... ids) {
        Criteria criteria = getCurrentSession().createCriteria(Friendship.class);
        criteria.createAlias("profiles", "profile");
        for (String id : ids) {
            criteria.add(Restrictions.eq("profile.id", id));
        }
        return criteria;
    }
}
