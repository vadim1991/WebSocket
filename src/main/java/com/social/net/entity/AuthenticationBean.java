package com.social.net.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.base.MoreObjects;

import java.io.Serializable;
import java.util.Map;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public class AuthenticationBean implements Serializable {

    private String type;
    @JsonProperty("sequence_id")
    private String sequenceID;
    private Map<String,String> data;

    public AuthenticationBean() {
    }

    public AuthenticationBean(String type, String sequenceID, Map<String, String> data) {
        this.type = type;
        this.sequenceID = sequenceID;
        this.data = data;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSequenceID() {
        return sequenceID;
    }

    public void setSequenceID(String sequenceID) {
        this.sequenceID = sequenceID;
    }

    public Map<String, String> getData() {
        return data;
    }

    public void setData(Map<String, String> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("type", type)
                .add("sequenceID", sequenceID)
                .add("data", data)
                .toString();
    }
}
