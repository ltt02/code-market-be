package com.thesis.code_market.order;

import com.thesis.code_market.application.ApplicationDTO;
import com.thesis.code_market.cart.CartDetailDTO;
import lombok.Data;

@Data
public class OrderDetailDTO {

    private OrderDTO order;
//    private Long id;
    private ApplicationDTO application;

    // Getters and Setters
    public OrderDetailDTO(OrderDetail orderDetail) {
//        this.id = orderDetail.getId();
        this.order = new OrderDTO(orderDetail.getOrder());
        this.application = new ApplicationDTO(orderDetail.getApplication());
    }

    public OrderDetailDTO(CartDetailDTO cartDetail) {
        this.application = cartDetail.getApplication();
    }
}