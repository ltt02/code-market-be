package com.thesis.code_market.application;

import lombok.Data;
import lombok.Setter;

import java.util.List;

@Data
@Setter
public class ApplicationForChartDTO {
    private List<String> labels;
    private List<Long> counts;
}
