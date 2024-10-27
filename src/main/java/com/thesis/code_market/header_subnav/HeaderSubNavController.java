package com.thesis.code_market.header_subnav;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/header-sub-nav")
public class HeaderSubNavController {

    @Autowired
    HeaderSubNavService headerSubNavService;

    @GetMapping
    public List<HeaderSubNavDTO> getAllHeaderSubNav() {
        return this.headerSubNavService.findAll();
    }
}
