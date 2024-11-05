package com.thesis.code_market.major;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class MajorDTO {
    private String name;

    public MajorDTO(Major major) {
        this.name = major.getName();
    }
}
