package com.social.net.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "message")
@Data
@NoArgsConstructor
public class Message implements IEntity {

    @Id
    private String id;
    private String content;
    @ManyToOne(fetch = FetchType.EAGER)
    private Profile owner;
    @ManyToOne(fetch = FetchType.EAGER)
    private Friendship friendship;
    private Date time;
    private boolean isRead;

}
