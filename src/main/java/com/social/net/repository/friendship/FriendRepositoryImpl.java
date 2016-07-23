package com.social.net.repository.friendship;

import com.social.net.entity.FriendShip;
import com.social.net.repository.generic.GenericRepository;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("friendshipRepository")
public class FriendRepositoryImpl extends GenericRepository implements FriendshipRepository {

    @Override
    public FriendShip save(FriendShip friendShip) {
        friendShip.setId((Long) getCurrentSession().save(friendShip));
        return friendShip;
    }

    @Override
    public void update(FriendShip friendShip) {
        getCurrentSession().update(friendShip);
    }

    @Override
    public FriendShip getFriendship(long id) {
        return (FriendShip) getCurrentSession().get(FriendShip.class, id);
    }

    @Override
    public FriendShip getByProfileIDs(long... ids) {
        Criteria criteria = fillCriteria(ids);
        FriendShip result = (FriendShip) criteria.uniqueResult();
        System.out.println(result);
        return result;
    }

    @Override
    public FriendShip getByProfileIDs(long friendshipId, long... ids) {
        Criteria criteria = fillCriteria(ids);
        criteria.add(Restrictions.eq("id", friendshipId));
        return (FriendShip) criteria.uniqueResult();
    }

    private Criteria fillCriteria(long... ids) {
        Criteria criteria = getCurrentSession().createCriteria(FriendShip.class);
        criteria.createAlias("profiles", "profile");
        for (long id : ids) {
            criteria.add(Restrictions.eq("profile.id", id));
        }
        return criteria;
    }
}
