package com.social.net.entity;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "friendship")
@Data
@NoArgsConstructor
public class Friendship extends AbstractTimestampEntity implements IEntity {

    @Id
    private String id;
    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Profile> profiles;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<Message> messages;
    private boolean hasUnreadMessage;

}
