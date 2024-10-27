package com.thesis.code_market.cart;

import com.thesis.code_market.application.Application;
import com.thesis.code_market.application.ApplicationDTO;
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
                    Application application = (detail.getApplication() != null) ? detail.getApplication() : null;
                    assert application != null;
                    return new CartDetailDTO(cartDetailId, new ApplicationDTO(application));
                })
                .collect(Collectors.toList());
    }
}