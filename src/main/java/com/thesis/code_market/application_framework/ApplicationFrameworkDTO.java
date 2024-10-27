package com.thesis.code_market.application_framework;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplicationFrameworkDTO {
    private Long id;
    private String name;

    public ApplicationFrameworkDTO(ApplicationFramework framework) {
        this.id = framework.getId();
        this.name = framework.getName();
    }
}