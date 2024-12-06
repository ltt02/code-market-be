package com.thesis.code_market.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderAmountByPeriodDTO {
    private String time;
    private float amount;
}
