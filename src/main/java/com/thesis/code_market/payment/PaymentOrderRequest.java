package com.thesis.code_market.payment;

import com.thesis.code_market.order.OrderToPaymentDTO;
import lombok.Data;

import java.util.List;

@Data
public class PaymentOrderRequest {
    private Payment payment;
    private List<OrderToPaymentDTO> orderList;
}
