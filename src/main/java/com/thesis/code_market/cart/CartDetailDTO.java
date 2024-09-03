package com.thesis.code_market.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDetailDTO {

    private Long cartDetailId;
    private Long cartId;
    private Long applicationId;

    // Getters and Setters
}
