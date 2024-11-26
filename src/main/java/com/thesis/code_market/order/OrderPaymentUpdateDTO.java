package com.thesis.code_market.order;

import lombok.Data;

@Data
public class OrderPaymentUpdateDTO {
    private OrderStatus status;
    private Long paymentId;

    public OrderPaymentUpdateDTO(OrderStatus status, Long paymentId) {
        this.status = status;
        this.paymentId = paymentId;
    }
}
