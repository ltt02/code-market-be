package com.thesis.code_market.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderAmountByPeriodRequest {
    private String period;
    private Date startDate;
    private Date endDate;
}
