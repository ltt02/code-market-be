package com.thesis.code_market.user;

import com.thesis.code_market.cart.Cart;
import com.thesis.code_market.cart.CartRepository;
import jakarta.transaction.Transactional;
import org.hibernate.Hibernate;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private ModelMapper modelMapper;

    public List<UserDTO> findAll() {
        List<User> users = this.userRepository.findAll();
        return users.stream().map(UserDTO::new).toList();
    }

    public User findById(Long id) {
        User user = userRepository.findById(id).orElse(null);
        return user;
    }

    @SuppressWarnings("null")
    public UserDTO findByIdDto(Long id) {
        User user = userRepository.findById(id).orElse(null);

        if (user != null) {
            Hibernate.initialize(user.getRoles()); // Eagerly fetch roles
            Hibernate.initialize(user.getApplicationList()); // Eagerly fetch roles
            return modelMapper.map(user, UserDTO.class);
        }
        return null;
    }

    public User findByUserName(String userName) {
        return this.userRepository.findUserByUserName(userName).orElse(null);
    }

    public void add(User user) {
        if (this.findById(user.getId()) == null) {
            User savedUser = this.userRepository.save(user);
            Cart cart = new Cart();
            cart.setUser(savedUser);
            cartRepository.save(cart);
        }
    }

    @SuppressWarnings("null")
    public void deleteById(Long id) {
        this.userRepository.deleteById(id);
    }

    @SuppressWarnings("null")
    @Transactional
    public User update(Long id, UserDTO userDTO) {
        User existingUser = userRepository.findById(id).orElse(null);
        if (existingUser != null) {
            existingUser.setLocked(!existingUser.isLocked());
            this.userRepository.save(existingUser);
            return existingUser;
        }
        return null;
    }

    @SuppressWarnings("null")
    public User updateAvatar(Long id, String avatar) {
        User existUser = this.userRepository.findById(id).orElse(null);
        if (existUser != null) {
            existUser.setAvatar(avatar);
            this.userRepository.save(existUser);
            return existUser;
        }
        return null;
    }
}
