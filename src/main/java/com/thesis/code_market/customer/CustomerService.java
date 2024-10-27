package com.thesis.code_market.customer;

import com.thesis.code_market.cart.Cart;
import com.thesis.code_market.cart.CartRepository;
import com.thesis.code_market.user.User;
import com.thesis.code_market.user.UserDTO;
import com.thesis.code_market.user.UserRepository;
import jakarta.transaction.Transactional;
import org.hibernate.Hibernate;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Transactional
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private ModelMapper modelMapper;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); // Initialize BCrypt

    public ArrayList<Customer> findAll() {
        return (ArrayList<Customer>) customerRepository.findAll();
    }

    @SuppressWarnings("null")
    public Customer findById(Long id) {
        return customerRepository.findById(id).orElse(null);
    }

    public UserDTO findByUserName(String userName) {
        User user = userRepository.findUserByUserName(userName).orElse(null);

        if (user != null) {
            Hibernate.initialize(user.getRoles()); // Eagerly fetch roles
            Hibernate.initialize(user.getApplicationList()); // Eagerly fetch roles
            return modelMapper.map(user, UserDTO.class);
        }
        return null;
    }

    @SuppressWarnings("null")
    public void add(Customer customer) {
        customer.setPassword(passwordEncoder.encode(customer.getPassword())); // Hash password before saving
        User savedUser = this.customerRepository.save(customer);
        Cart cart = new Cart();
        cart.setUser(savedUser);
        cartRepository.save(cart);
    }

    public boolean validatePassword(User user, String rawPassword) {
        return passwordEncoder.matches(rawPassword, user.getPassword());
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
