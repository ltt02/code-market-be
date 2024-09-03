package com.thesis.code_market.customer;

import com.thesis.code_market.cart.Cart;
import com.thesis.code_market.cart.CartRepository;
import com.thesis.code_market.user.User;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Transactional
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private CartRepository cartRepository;

    public ArrayList<Customer> findAll() {
        return (ArrayList<Customer>) customerRepository.findAll();
    }

    @SuppressWarnings("null")
    public Customer findById(Long id) {
        return customerRepository.findById(id).orElse(null);
    }

    public Customer findByUserName(String userName) {
        return customerRepository.findByUserName(userName).orElse(null);
    }

    @SuppressWarnings("null")
    public void add(Customer customer) {
        if (this.findById(customer.getId()) == null) {
            User savedUser = this.customerRepository.save(customer);
            Cart cart = new Cart();
            cart.setUser(savedUser);
            cartRepository.save(cart);
        }
    }

    @SuppressWarnings("null")
    public void deleteById(Long id) {
        this.customerRepository.deleteById(id);
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
