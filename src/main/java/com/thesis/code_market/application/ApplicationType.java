package com.thesis.code_market.application;

import java.util.HashMap;
import java.util.Map;

public enum ApplicationType {
    GAME,
    WEB_BROWSERS,
    WORD_PROCESSING_SOFTWARE,
    OTHER;

    private static final Map<String, ApplicationType> stringToEnum = new HashMap<>();

    static {
        for (ApplicationType applicationType : values()) {
            stringToEnum.put(applicationType.name(), applicationType);
        }
    }

    public static ApplicationType fromString(String value) {
        return stringToEnum.get(value);
    }
}
