package com.thesis.code_market.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class OrderToPaymentDTO {
    private Long authorId;
    private BigDecimal price;
}
