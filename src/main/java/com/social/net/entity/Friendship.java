package com.social.net.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "friendship")
@Data
@NoArgsConstructor
public class Friendship implements IEntity {

    @Id
    private String id;
    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Profile> profiles;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<Message> messages;
    @Column(name = "update_time")
    private Date updateTime;
    private boolean hasUnreadMessage;

}
