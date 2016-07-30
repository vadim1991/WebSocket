package com.social.net.repository.friendship;

import com.social.net.entity.Friendship;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface FriendshipRepository extends CrudRepository<Friendship, String> {

    List<Friendship> findByProfilesEmail(String email, Pageable pageable);

    List<Friendship> findByProfilesEmail(String email, Sort sort);

}
