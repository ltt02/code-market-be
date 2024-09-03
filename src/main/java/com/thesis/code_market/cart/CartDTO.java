package com.thesis.code_market.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartDTO {
    private Long id;
    private List<CartDetailDTO> cartDetails;

    public CartDTO(Cart cart) {
        this.id = cart.getId();
        this.cartDetails = cart.getCartDetails().stream()
                .map(detail -> {
                    Long cartDetailId = detail.getId();
                    Long applicationId = (detail.getApplication() != null) ? detail.getApplication().getId() : null;
                    Long cartId = (detail.getCart() != null) ? detail.getCart().getId() : null;
                    return new CartDetailDTO(cartDetailId, cartId, applicationId);
                })
                .collect(Collectors.toList());
    }
}