package com.social.net.util;

import org.apache.commons.lang.RandomStringUtils;

public class Util {

    public static String generateStringKey() {
        return RandomStringUtils.randomAlphanumeric(10);
    }

}
