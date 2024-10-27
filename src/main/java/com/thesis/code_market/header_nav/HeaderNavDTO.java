package com.thesis.code_market.header_nav;

import com.thesis.code_market.header_subnav.HeaderSubNavDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HeaderNavDTO {
    private Long id;
    private String name;
    private List<HeaderSubNavDTO> subNavList;

    public HeaderNavDTO(HeaderNav item) {
        this.id = item.getId();
        this.name = item.getName();
        this.subNavList =  item.getSubNavList().stream().map(HeaderSubNavDTO::new).collect(Collectors.toList());
    }
}