package com.thesis.code_market.header_subnav;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HeaderSubNavDTO {
    private Long id;
    private String name;

    public HeaderSubNavDTO(HeaderSubNav item) {
        this.id = item.getId();
        this.name = item.getName();
    }
}