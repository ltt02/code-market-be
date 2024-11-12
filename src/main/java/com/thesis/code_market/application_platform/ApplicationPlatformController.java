package com.thesis.code_market.application_platform;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/application-platform-list")
public class ApplicationPlatformController {

    @Autowired
    ApplicationPlatformService applicationPlatformService;

    @GetMapping
    public List<ApplicationPlatformDTO> getAllPlatforms() {
        return this.applicationPlatformService.findAll();
    }
}
