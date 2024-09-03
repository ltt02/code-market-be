package com.thesis.code_market.application_category;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplicationCategoryDTO {
    private Long id;
    private String name;

    public ApplicationCategoryDTO(ApplicationCategory category) {
        this.id = category.getId();
        this.name = category.getName();
    }
}