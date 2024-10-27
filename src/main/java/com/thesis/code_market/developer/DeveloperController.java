package com.thesis.code_market.developer;

import com.thesis.code_market.user.User;
import com.thesis.code_market.user.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/developers")
public class DeveloperController {

    @Autowired
    DeveloperService developerService;

    @GetMapping
    public ArrayList<Developer> getAll() {
        return this.developerService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getById(@PathVariable Long id) {
        Developer developer = developerService.findById(id);
        if (developer == null) {
            return new ResponseEntity<>("This developer is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(developer, HttpStatus.FOUND);
    }

    @PostMapping
    public ResponseEntity<?> addCustomer(@RequestBody Developer developer) {
        // Check if customer is exist or not?
        // Customer isExistedCustomer = customerService.findById(customer.getId());
        // if (isExistedCustomer == null) {
        // this.customerService.add(customer);
        // return new ResponseEntity<>(customer, HttpStatus.CREATED);
        // }
        // return new ResponseEntity<>("The customer with id=" + customer.getId() + "
        // existed. Try again!", HttpStatus.BAD_REQUEST);
        this.developerService.add(developer);
        return new ResponseEntity<>(developer, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteCustomerById(@PathVariable Long id) {
        Developer developer = developerService.findById(id);
        if (developer == null) {
            return new ResponseEntity<>("This developer is not exist", HttpStatus.NOT_FOUND);
        }
        this.developerService.deleteById(id);
        return new ResponseEntity<>("A developer with id=" + id + " is deleted successfully", HttpStatus.OK);
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody Developer developer) {
        // Check if user already exists
        UserDTO existingDeveloper = developerService.findByUserName(developer.getUserName());
        if (existingDeveloper != null) {
            return new ResponseEntity<>("Developer already exists", HttpStatus.CONFLICT);
        }

        // Check if username and password are provided
        if (developer.getUserName() == null || developer.getUserName().isEmpty() ||
                developer.getPassword() == null || developer.getPassword().isEmpty()) {
            return new ResponseEntity<>("Username and password are required", HttpStatus.BAD_REQUEST);
        }

        // Register user
        developerService.add(developer);
        return new ResponseEntity<>(developer, HttpStatus.CREATED);
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Developer developer) {
        // Find user by username
        UserDTO existingUserDTO = developerService.findByUserName(developer.getUserName());
        if (existingUserDTO == null) {
            return new ResponseEntity<>("Developer not found", HttpStatus.NOT_FOUND);
        }

        // Convert UserDTO to actual User object for password checking
        User existingUser = developerService.findById(existingUserDTO.getId());
        if (existingUser == null) {
            return new ResponseEntity<>("Developer not found", HttpStatus.NOT_FOUND);
        }

        // Validate password
        if (!developerService.validatePassword(existingUser, developer.getPassword())) {
            return new ResponseEntity<>("Invalid password", HttpStatus.UNAUTHORIZED);
        }

        // Successful login
        return new ResponseEntity<>(existingUserDTO, HttpStatus.OK);
    }

}
