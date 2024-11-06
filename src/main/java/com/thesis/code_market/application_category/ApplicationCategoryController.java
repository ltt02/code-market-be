package com.thesis.code_market.application_category;

import com.thesis.code_market.application_framework.ApplicationFrameworkDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/application-category-list")
public class ApplicationCategoryController {

    @Autowired
    ApplicationCategoryService applicationCategoryService;

    @GetMapping
    public List<ApplicationCategoryDTO> getAllCategories() {
        return this.applicationCategoryService.findAll();
    }
}
