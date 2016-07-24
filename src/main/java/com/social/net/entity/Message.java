package com.social.net.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "message")
@Data
@NoArgsConstructor
public class Message implements IEntity {

    @Id
    private String id;
    private String content;
    @ManyToOne
    private Profile owner;
    private Date time;
    private boolean isRead;

}
