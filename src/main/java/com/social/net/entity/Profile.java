package com.social.net.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

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

}
