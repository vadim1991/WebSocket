package com.social.net.datamodel;

/**
 * Created by Vadym_Vlasenko on 27.06.2016.
 */
public class Query {
    public static final String GET_BY_EMAIL_QUERY = "from Profile as p where Profile.email=:email";
    public static final String GET_BY_CREDS_QUERY = "from Profile as p where p.email=:email and p.password=:password";
    public static final String GET_BY_PROFILE_TOKEN = "from Token as t where t.profile.id = :profileID and t.state=:state";
}
