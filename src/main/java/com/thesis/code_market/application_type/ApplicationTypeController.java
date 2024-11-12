package com.thesis.code_market.application_type;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/application-type-list")
public class ApplicationTypeController {

    @Autowired
    ApplicationTypeService applicationTypeService;

    @GetMapping
    public List<ApplicationTypeDTO> getAllTypes() {
        return this.applicationTypeService.findAll();
    }
}
