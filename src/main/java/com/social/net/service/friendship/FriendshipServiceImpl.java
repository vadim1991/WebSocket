package com.social.net.service.friendship;

import com.social.net.entity.Friendship;
import com.social.net.entity.dto.FriendshipRequest;
import com.social.net.repository.friendship.FriendshipRepository;
import com.social.net.util.Util;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@EnableTransactionManagement
@Transactional
public class FriendshipServiceImpl implements FriendshipService {

    @Autowired
    private FriendshipRepository friendshipRepository;

    @Override
    public List<Friendship> getFriendshipsSortByDate(FriendshipRequest request) {
        Sort sort = new Sort(Sort.Direction.DESC, "updated");
        int pageNumber = request.getOffset() / request.getCount();
        Pageable pageable = new PageRequest(pageNumber, request.getCount(), sort);
        return friendshipRepository.findByProfilesEmail(request.getEmail(), pageable);
    }

    @Override
    public Friendship save(Friendship friendship) {
        if (StringUtils.isBlank(friendship.getId())) {
            friendship.setId(Util.generateStringKey());
        }
        friendship.setUpdated(new Date());
        return friendshipRepository.save(friendship);
    }

    @Override
    public Friendship findById(String id) {
        return friendshipRepository.findOne(id);
    }

    @Override
    public boolean exist(String id) {
        return friendshipRepository.exists(id);
    }
}
