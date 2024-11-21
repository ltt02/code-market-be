package com.thesis.code_market.application;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ApplicationGroupByTypeDTO {
    private String name; // Or the appropriate column name from ApplicationType
    private Long count;
}
