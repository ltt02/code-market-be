package com.thesis.code_market.developer;

import com.thesis.code_market.cart.Cart;
import com.thesis.code_market.cart.CartRepository;
import com.thesis.code_market.user.User;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Transactional
public class DeveloperService {

    @Autowired
    private DeveloperRepository developerRepository;

    @Autowired
    private CartRepository cartRepository;

    public ArrayList<Developer> findAll() {
        return (ArrayList<Developer>) developerRepository.findAll();
    }

    @SuppressWarnings("null")
    public Developer findById(Long id) {
        return developerRepository.findById(id).orElse(null);
    }

    public Developer findByUserName(String userName) {
        return developerRepository.findByUserName(userName).orElse(null);
    }

    @SuppressWarnings("null")
    public void add(Developer developer) {
        if (this.findById(developer.getId()) == null) {
            User savedUser = this.developerRepository.save(developer);
            Cart cart = new Cart();
            cart.setUser(savedUser);
            cartRepository.save(cart);
        }
    }

    @SuppressWarnings("null")
    public void deleteById(Long id) {
        this.developerRepository.deleteById(id);
    }

//    public Customer updateCustomer(Long id, Customer customer) {
//        Customer existingCustomer = findById(id);
//        if (existingCustomer != null) {
//            existingCustomer.setLocked(!existingCustomer.isLocked());
//            this.customerRepository.save(existingCustomer);
//            return existingCustomer;
//        }
//        return null;
//    }
//
//    public Customer updateCustomerInfo(Long id, Customer customer) {
//        Customer existingCustomer = findById(id);
//        if (existingCustomer != null) {
//            System.out.println(customer);
//            existingCustomer.setFullName(customer.getFullName());
//            existingCustomer.setEmail(customer.getEmail());
//            existingCustomer.setPhoneNumber(customer.getPhoneNumber());
//            existingCustomer.setDob(customer.getDob());
//            this.customerRepository.save(existingCustomer);
//            return existingCustomer;
//        }
//        return null;
//    }

}
