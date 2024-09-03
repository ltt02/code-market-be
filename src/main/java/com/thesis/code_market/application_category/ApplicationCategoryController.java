package com.thesis.code_market.application_category;

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
    public List<ApplicationCategoryDTO> getAllRoles() {
        return this.applicationCategoryService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getRoleById(@PathVariable Long id) {
        ApplicationCategoryDTO applicationCategoryDTO = applicationCategoryService.findById(id);
        if (applicationCategoryDTO == null) {
            return new ResponseEntity<>("This role is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(applicationCategoryDTO, HttpStatus.FOUND);
    }

    @PostMapping
    public ResponseEntity<?> addRole(@RequestBody ApplicationCategory role) {
        ApplicationCategory isExistedRole = this.applicationCategoryService.findByName(role.getName());
        if (isExistedRole == null) {
            this.applicationCategoryService.add(role);
            return new ResponseEntity<>(role, HttpStatus.CREATED);
        }
        return new ResponseEntity<>("The role with id=" + role.getId() + " existed. Try again!", HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteRoleById(@PathVariable Long id) {
        ApplicationCategoryDTO applicationCategoryDTO = this.applicationCategoryService.findById(id);
        if (applicationCategoryDTO == null) {
            return new ResponseEntity<>("This role is not exist", HttpStatus.NOT_FOUND);
        }
        this.applicationCategoryService.deleteById(id);
        return new ResponseEntity<>("A role with id=" + id + " is deleted successfully", HttpStatus.OK);
    }
}
