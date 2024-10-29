package com.thesis.code_market.order;

import java.util.HashMap;
import java.util.Map;

public enum OrderStatus {
    CREATING,
    PENDING_PAYMENT,
    PROCESSING,
    CANCELLED,
    REFUNDED,
    ON_HOLD;

    private static final Map<String, OrderStatus> stringToEnum = new HashMap<>();

    static {
        for (OrderStatus orderStatus : values()) {
            stringToEnum.put(orderStatus.name(), orderStatus);
        }
    }

    public static OrderStatus fromString(String value) {
        return stringToEnum.get(value);
    }
}
