package com.social.net.service.friendship;

import com.social.net.entity.Friendship;
import com.social.net.entity.Message;
import com.social.net.entity.dto.FriendshipRequest;

import java.util.List;

public interface FriendshipService {

    List<Friendship> getFriendshipsSortByDate(FriendshipRequest request);

    Friendship save(Friendship friendship);

    Friendship findById(String id);

    boolean exist(String id);
}
