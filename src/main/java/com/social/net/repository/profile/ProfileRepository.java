package com.social.net.repository.profile;

import com.social.net.repository.generic.GenericRepository;

public interface ProfileRepository<T> extends GenericRepository<T> {

    T getByCredentials(String email, String password);

}
