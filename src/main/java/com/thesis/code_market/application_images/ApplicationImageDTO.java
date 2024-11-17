package com.thesis.code_market.application_images;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplicationImageDTO {
    private Long id;
    private String link;

    public ApplicationImageDTO(ApplicationImage image) {
        this.id = image.getId();
        this.link = image.getLink();
    }

    public ApplicationImageDTO(String link) {
        this.link = link;
    }
}