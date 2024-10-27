package com.thesis.code_market.header_nav;

import com.thesis.code_market.header_subnav.HeaderSubNavDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class HeaderNavService {

    @Autowired
    private HeaderNavRepository headerNavRepository;

    public List<HeaderNavDTO> getAllHeaderNavs() {
        List<HeaderNav> headerNavs = headerNavRepository.findAll();
        return headerNavs.stream().map(this::convertToDTO).collect(Collectors.toList());
    }

    private HeaderNavDTO convertToDTO(HeaderNav headerNav) {
        List<HeaderSubNavDTO> subNavList = headerNav.getSubNavList().stream()
                .map(subNav -> new HeaderSubNavDTO(subNav.getId(), subNav.getName()))
                .collect(Collectors.toList());

        return new HeaderNavDTO(headerNav.getId(), headerNav.getName(), subNavList);
    }
}