package com.thesis.code_market.cart;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CartDetailRequest {

    private Long cartDetailId;
    private Long applicationId;
}