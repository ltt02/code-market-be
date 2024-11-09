package com.thesis.code_market.application_platform;

import com.thesis.code_market.application_category.ApplicationCategory;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplicationPlatformDTO {
    private Long id;
    private String name;

    public ApplicationPlatformDTO(ApplicationPlatform platform) {
        this.id = platform.getId();
        this.name = platform.getName();
    }
}