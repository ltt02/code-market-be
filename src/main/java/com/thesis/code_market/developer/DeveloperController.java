package com.thesis.code_market.developer;

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

//    @PostMapping("/register")
//    public ResponseEntity<?> registerCustomer(@RequestBody Developer developer) {
//        // Check if customer exists in the database
//        Developer existingDeveloper = developerService.findByUserName(developer.getUserName());
//        if (existingDeveloper != null) {
//            return new ResponseEntity<>("Customer existed", HttpStatus.CONFLICT);
//        }
//        this.developerService.add(developer);
//        return new ResponseEntity<>(existingDeveloper, HttpStatus.CREATED);
//    }
//
//    @PostMapping("/login")
//    public ResponseEntity<?> loginCustomer(@RequestBody Developer developer) {
//        // Check if customer exists in the database
//        Developer existingDeveloper = developerService.findByUserName(developer.getUserName());
//        if (existingDeveloper == null) {
//            return new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<>(existingDeveloper, HttpStatus.OK);
//    }
//
//    @PostMapping("/loginGoogle")
//    public ResponseEntity<?> loginGGCustomer(@RequestBody Developer developer) {
//        Developer existingDeveloper = developerService.findByUserName(developer.getUserName());
//        if (existingDeveloper == null) {
//            this.developerService.add(developer);
//            Developer getNewDeveloper = developerService.findByUserName(developer.getUserName());
//            return new ResponseEntity<>(getNewDeveloper, HttpStatus.CREATED);
//        }
//        return new ResponseEntity<>(existingDeveloper, HttpStatus.OK);
//    }

//    @PutMapping("/{id}/updateLockedStatus")
//    public ResponseEntity<?> updateStatusCustomer(@PathVariable Long id) {
//        Customer customer = customerService.findById(id);
//        if (customer == null) {
//            return new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
//        } else {
//            if (this.customerService.updateCustomer(id, customer) != null) {
//                customer = customerService.findById(id);
//                return new ResponseEntity<>(customer, HttpStatus.OK);
//            }
//            return new ResponseEntity<>("Update failed",
//                    HttpStatus.BAD_REQUEST);
//        }
//    }
//
//    @PutMapping("/{id}/updateInfo")
//    public ResponseEntity<?> updateInfoCustomer(@PathVariable Long id, @RequestBody Customer customer) {
//        if (customer == null) {
//            return new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
//        } else {
//            if (this.customerService.updateCustomerInfo(id, customer) != null) {
//                customer = customerService.findById(id);
//                return new ResponseEntity<>(customer, HttpStatus.OK);
//            }
//            return new ResponseEntity<>("Update failed",
//                    HttpStatus.BAD_REQUEST);
//        }
//    }

}
