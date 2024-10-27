package com.thesis.code_market.customer;

import com.thesis.code_market.user.User;
import com.thesis.code_market.user.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/customers")
public class CustomerController {

    @Autowired
    CustomerService customerService;

    @GetMapping
    public ArrayList<Customer> getAllCustomers() {
        return this.customerService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getCustomerById(@PathVariable Long id) {
        Customer customer = customerService.findById(id);
        if (customer == null) {
            return new ResponseEntity<>("This customer is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(customer, HttpStatus.FOUND);
    }

    @GetMapping("/userName/{userName}")
    public ResponseEntity<?> getCustomerAccount(@PathVariable String userName) {
        UserDTO customer = customerService.findByUserName(userName);
        if (customer == null) {
            return new ResponseEntity<>("This customer is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(customer, HttpStatus.FOUND);
    }

    @PostMapping
    public ResponseEntity<?> addCustomer(@RequestBody Customer customer) {
        // Check if customer is exist or not?
        // Customer isExistedCustomer = customerService.findById(customer.getId());
        // if (isExistedCustomer == null) {
        // this.customerService.add(customer);
        // return new ResponseEntity<>(customer, HttpStatus.CREATED);
        // }
        // return new ResponseEntity<>("The customer with id=" + customer.getId() + "
        // existed. Try again!", HttpStatus.BAD_REQUEST);
        this.customerService.add(customer);
        return new ResponseEntity<>(customer, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteCustomerById(@PathVariable Long id) {
        Customer customer = customerService.findById(id);
        if (customer == null) {
            return new ResponseEntity<>("This customer is not exist", HttpStatus.NOT_FOUND);
        }
        this.customerService.deleteById(id);
        return new ResponseEntity<>("A customer with id=" + id + " is deleted successfully", HttpStatus.OK);
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody Customer customer) {
        // Check if user already exists
        UserDTO existingCustomer = customerService.findByUserName(customer.getUserName());
        if (existingCustomer != null) {
            return new ResponseEntity<>("Username already exists", HttpStatus.CONFLICT);
        }

        // Check if username and password are provided
        if (customer.getUserName() == null || customer.getUserName().isEmpty() ||
                customer.getPassword() == null || customer.getPassword().isEmpty()) {
            return new ResponseEntity<>("Username and password are required", HttpStatus.BAD_REQUEST);
        }

        // Register user
        customerService.add(customer);
        return new ResponseEntity<>(customer, HttpStatus.CREATED);
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Customer customer) {
        // Find user by username
        UserDTO existingUserDTO = customerService.findByUserName(customer.getUserName());
        if (existingUserDTO == null) {
            return new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
        }

        // Convert UserDTO to actual User object for password checking
        User existingUser = customerService.findById(existingUserDTO.getId());
        if (existingUser == null) {
            return new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
        }

        // Validate password
        if (!customerService.validatePassword(existingUser, customer.getPassword())) {
            return new ResponseEntity<>("Invalid password", HttpStatus.UNAUTHORIZED);
        }

        // Successful login
        return new ResponseEntity<>(existingUserDTO, HttpStatus.OK);
    }

    @PostMapping("/loginGoogle")
    public ResponseEntity<?> loginGGCustomer(@RequestBody Customer customer) {
        UserDTO existingCustomer = customerService.findByUserName(customer.getUserName());
        if (existingCustomer == null) {
            this.customerService.add(customer);
            UserDTO getNewCustomer = customerService.findByUserName(customer.getUserName());
            return new ResponseEntity<>(getNewCustomer, HttpStatus.CREATED);
        }
        return new ResponseEntity<>(existingCustomer, HttpStatus.OK);
    }

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
