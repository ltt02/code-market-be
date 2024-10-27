package com.thesis.code_market.header_subnav;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeaderSubNavService {

    @Autowired
    private HeaderSubNavRepository headerSubNavRepository;

    public List<HeaderSubNavDTO> findAll() {
        List<HeaderSubNav> headerSubNavList = this.headerSubNavRepository.findAll();
        return headerSubNavList.stream().map(HeaderSubNavDTO::new).toList();
    }
}