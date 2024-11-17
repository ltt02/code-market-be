package com.thesis.code_market.cart;

import com.thesis.code_market.application.Application;
import com.thesis.code_market.application.ApplicationDTO;
import lombok.Data;

@Data
public class CartDetailDTO {

    private Long cartDetailId;
    private ApplicationDTO application;

    // Getters and Setters
    public CartDetailDTO(Long cartDetailId, Application application) {
        this.cartDetailId = cartDetailId;
        this.application = new ApplicationDTO(application);
    }
}
