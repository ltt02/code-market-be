package com.thesis.code_market.application;

import java.util.HashMap;
import java.util.Map;

public enum ApplicationMaterial {
    COTTON,
    CANVAS,
    FABRIC,
    GOLD,
    SILVER,
    COPPER,
    LEATHER,
    SILK,
    DENIM,
    WOOL,
    POLYESTER,
    NYLON,
    LINEN,
    VELVET,
    CHIFFON,
    SPANDEX,
    LACE,
    SYNTHETIC,
    OTHER;

    private static final Map<String, ApplicationMaterial> stringToEnum = new HashMap<>();

    static {
        for (ApplicationMaterial applicationMaterial : values()) {
            stringToEnum.put(applicationMaterial.name(), applicationMaterial);
        }
    }

    public static ApplicationMaterial fromString(String value) {
        return stringToEnum.get(value);
    }
}

