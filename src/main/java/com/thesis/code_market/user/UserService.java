package com.thesis.code_market.user;

import com.thesis.code_market.cart.Cart;
import com.thesis.code_market.cart.CartRepository;
import com.thesis.code_market.customer.CustomerService;
import com.thesis.code_market.developer.DeveloperService;
import com.thesis.code_market.sysad.SysAdService;
import com.thesis.integration.minio.MinioChannel;
import jakarta.transaction.Transactional;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    @Autowired
    private CustomerService customerService;

    @Autowired
    private DeveloperService developerService;

    @Autowired
    private SysAdService sysAdService;

    @Autowired
    private MinioChannel minioChannel;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); // Initialize BCrypt

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
//            Hibernate.initialize(user.getRoles()); // Eagerly fetch roles
            return modelMapper.map(user, UserDTO.class);
        }
        return null;
    }

    public UserDTO findByUserName(String userName) {
        User user = userRepository.findUserByUserName(userName).orElse(null);

        if (user != null) {
//            Hibernate.initialize(user.getRoles()); // Eagerly fetch roles
            return modelMapper.map(user, UserDTO.class);
        }
        return null;
    }

    public void add(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword())); // Hash password before saving
        User savedUser = this.userRepository.save(user);
        Cart cart = new Cart();
        cart.setUser(savedUser);
        cartRepository.save(cart);
    }

    public boolean validatePassword(User user, String rawPassword) {
        return passwordEncoder.matches(rawPassword, user.getPassword());
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

    public UserDTO updateInfo(Long id, UserDTO request) {
        User user = userRepository.findById(id).orElse(null);
        UserDTO userDTO = modelMapper.map(user, UserDTO.class);
        if (user != null) {
            if (request.getFullName() != user.getFullName()) {
                user.setFullName(request.getFullName());
            }
            if (request.getDob() != user.getDob()) {
                user.setDob(request.getDob());
            }
            if (request.getEmail() != user.getEmail()) {
                user.setEmail(request.getEmail());
            }
            if (request.getPhone() != user.getPhoneNumber()) {
                user.setPhoneNumber(request.getPhone());
            }
            User temp = this.userRepository.save(user);
            userDTO = modelMapper.map(temp, UserDTO.class);
        }
        return userDTO;
    }

    @Transactional
    public User changePassword(Long id, PasswordChangeRequest request) {
        User existingUser = userRepository.findById(id).orElse(null);
        User result = new User();
        if (existingUser != null) {
            if (passwordEncoder.encode(request.getCurrentPassword()) != existingUser.getPassword()) {
                return null;
            } else {
                existingUser.setPassword(passwordEncoder.encode(request.getNewPassword()));
                result = this.userRepository.save(existingUser);
            }
        }
        return result;
    }

    public List<Long> getUserCountsGroupByType() {
        List<Long> counts = new ArrayList<>();
        counts.add(this.customerService.getCustomerCount());
        counts.add(this.developerService.getDeveloperCount());
        counts.add(this.sysAdService.getSysAdCount());
        return counts;
    }
}
