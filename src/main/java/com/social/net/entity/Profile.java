package com.social.net.entity;

import com.social.net.entity.model.ProfileModel;
import com.social.net.service.mapper.ProfileMapper;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "profile")
@Data
@NoArgsConstructor
public class Profile implements IEntity {

    @Id
    private String id;
    @Column(unique = true)
    private String email;
    private String password;
    private String photo;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "is_online")
    private boolean isOnline;

    public ProfileModel toModel() {
        return ProfileMapper.mapEntityToModel(this);
    }
}
