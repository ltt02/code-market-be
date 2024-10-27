package com.thesis.code_market.cart;

import com.thesis.code_market.application.ApplicationDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDetailDTO {

    private Long cartDetailId;
    private ApplicationDTO application;

    // Getters and Setters
}
