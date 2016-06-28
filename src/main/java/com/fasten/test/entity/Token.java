package com.fasten.test.entity;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
@Entity
@Table(name = "tokens")
public class Token implements Serializable{

    @Id
    private String token;
    @Column(name = "expiration_date")
    private Date expirationDate;
    @Enumerated(EnumType.STRING)
    private TokenState state;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private Profile profile;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public TokenState getState() {
        return state;
    }

    public void setState(TokenState state) {
        this.state = state;
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Token token1 = (Token) o;
        return Objects.equal(token, token1.token);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(token);
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("token", token)
                .add("expirationDate", expirationDate)
                .add("state", state)
                .add("profile", profile)
                .toString();
    }
}
