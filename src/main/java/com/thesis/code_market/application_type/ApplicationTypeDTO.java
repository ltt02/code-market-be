package com.thesis.code_market.application_type;

import com.thesis.code_market.application_platform.ApplicationPlatform;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplicationTypeDTO {
    private Long id;
    private String name;

    public ApplicationTypeDTO(ApplicationType type) {
        this.id = type.getId();
        this.name = type.getName();
    }
}