package com.thesis.code_market.sysad;

import com.thesis.code_market.cart.Cart;
import com.thesis.code_market.cart.CartRepository;
import com.thesis.code_market.user.User;
import com.thesis.code_market.user.UserDTO;
import com.thesis.code_market.user.UserRepository;
import jakarta.transaction.Transactional;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Transactional
public class SysAdService {

    @Autowired
    private SysAdRepository sysAdRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private ModelMapper modelMapper;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); // Initialize BCrypt

    public ArrayList<SysAd> findAll() {
        return (ArrayList<SysAd>) sysAdRepository.findAll();
    }

    @SuppressWarnings("null")
    public SysAd findById(Long id) {
        return sysAdRepository.findById(id).orElse(null);
    }

    public UserDTO findByUserName(String userName) {
        User user = userRepository.findUserByUserName(userName).orElse(null);

        if (user != null) {
//            Hibernate.initialize(user.getRoles()); // Eagerly fetch roles
//            Hibernate.initialize(user.getApplicationList()); // Eagerly fetch roles
            return modelMapper.map(user, UserDTO.class);
        }
        return null;
    }

    @SuppressWarnings("null")
    public void add(SysAd sysAd) {
        sysAd.setPassword(passwordEncoder.encode(sysAd.getPassword())); // Hash password before saving
        User savedUser = this.sysAdRepository.save(sysAd);
        Cart cart = new Cart();
        cart.setUser(savedUser);
        cartRepository.save(cart);
    }

    public boolean validatePassword(User user, String rawPassword) {
        return passwordEncoder.matches(rawPassword, user.getPassword());
    }

    @SuppressWarnings("null")
    public void deleteById(Long id) {
        this.sysAdRepository.deleteById(id);
    }

    public long getSysAdCount(){
        return this.sysAdRepository.count();
    }

//    public SysAd updateSysAd(Long id, SysAd sysAd) {
//        SysAd existingSysAd = findById(id);
//        if (existingSysAd != null) {
//            existingSysAd.setLocked(!existingSysAd.isLocked());
//            this.sysAdRepository.save(existingSysAd);
//            return existingSysAd;
//        }
//        return null;
//    }
//
//    public SysAd updateSysAdInfo(Long id, SysAd sysAd) {
//        SysAd existingSysAd = findById(id);
//        if (existingSysAd != null) {
//            System.out.println(sysAd);
//            existingSysAd.setFullName(sysAd.getFullName());
//            existingSysAd.setEmail(sysAd.getEmail());
//            existingSysAd.setPhoneNumber(sysAd.getPhoneNumber());
//            existingSysAd.setDob(sysAd.getDob());
//            this.sysAdRepository.save(existingSysAd);
//            return existingSysAd;
//        }
//        return null;
//    }

}
