package com.thesis.code_market.header_nav;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/header-nav")
public class HeaderNavController {

    @Autowired
    HeaderNavService headerNavService;

    @GetMapping
    public ResponseEntity<List<HeaderNavDTO>> getAllHeaderNavs() {
        List<HeaderNavDTO> headerNavs = headerNavService.getAllHeaderNavs();
        return ResponseEntity.ok(headerNavs);
    }
}
