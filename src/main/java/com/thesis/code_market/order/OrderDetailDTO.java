package com.thesis.code_market.order;

import com.thesis.code_market.application.ApplicationDTO;
import com.thesis.code_market.cart.CartDetailDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetailDTO {

    private Long orderDetailId;
    private ApplicationDTO application;

    // Getters and Setters
    public OrderDetailDTO(CartDetailDTO cartDetail) {
        this();
        this.application = cartDetail.getApplication();
    }
}
