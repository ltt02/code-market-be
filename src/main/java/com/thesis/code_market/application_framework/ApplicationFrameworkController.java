package com.thesis.code_market.application_framework;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/application-framework-list")
public class ApplicationFrameworkController {

    @Autowired
    ApplicationFrameworkService applicationFrameworkService;

    @GetMapping
    public List<ApplicationFrameworkDTO> getAllFrameworks() {
        return this.applicationFrameworkService.findAll();
    }
}
