package com.thesis.code_market.user;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping
    public List<UserDTO> getAllUsers() {
        return this.userService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getUserById(@PathVariable Long id) {
        UserDTO userDTO = userService.findByIdDto(id);
        if (userDTO == null) {
            return new ResponseEntity<>("This user is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(userDTO, HttpStatus.OK);
    }

//    @PutMapping("/{id}")
//    public ResponseEntity<?> updateUserById(@PathVariable Long id) {
//        UserDTO userDTO = userService.findByIdDto(id);
//        if (userDTO == null) {
//            return new ResponseEntity<>("This user is not exist", HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<>(userDTO, HttpStatus.FOUND);
//    }

    @GetMapping("/username/{username}")
    public ResponseEntity<?> getUserById(@PathVariable String username) {
        UserDTO user = userService.findByUserName(username);
        if (user == null) {
            return new ResponseEntity<>("This user is not exist", HttpStatus.NOT_FOUND);
        }

        return new ResponseEntity<>(user, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<?> addUser(@RequestBody User user) {
        UserDTO isExistedUser = this.userService.findByUserName(user.getUserName());
        if (isExistedUser == null) {
            this.userService.add(user);
            return new ResponseEntity<>(user, HttpStatus.CREATED);
        }
        return new ResponseEntity<>("The user with username=" + user.getUserName() + " existed. Try again!",
                HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteUserById(@PathVariable Long id) {
        UserDTO userDTO = this.userService.findByIdDto(id);
        if (userDTO == null) {
            return new ResponseEntity<>("This user is not exist", HttpStatus.NOT_FOUND);
        }
        this.userService.deleteById(id);
        return new ResponseEntity<>("A user with id=" + id + " is deleted successfully", HttpStatus.OK);
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody User user) {
        // Check if user already exists
        UserDTO existingUser = userService.findByUserName(user.getUserName());
        if (existingUser != null) {
            return new ResponseEntity<>("Username already exists", HttpStatus.CONFLICT);
        }

        // Check if username and password are provided
        if (user.getUserName() == null || user.getUserName().isEmpty() ||
                user.getPassword() == null || user.getPassword().isEmpty()) {
            return new ResponseEntity<>("Username and password are required", HttpStatus.BAD_REQUEST);
        }

        // Register user
        userService.add(user);
        return new ResponseEntity<>(user, HttpStatus.CREATED);
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody User loginRequest) {
        // Find user by username
        UserDTO existingUserDTO = userService.findByUserName(loginRequest.getUserName());
        if (existingUserDTO == null) {
            return new ResponseEntity<>("User not found", HttpStatus.NOT_FOUND);
        }

        // Convert UserDTO to actual User object for password checking
        User existingUser = userService.findById(existingUserDTO.getId());

        // Validate password
        if (!userService.validatePassword(existingUser, loginRequest.getPassword())) {
            return new ResponseEntity<>("Invalid password", HttpStatus.UNAUTHORIZED);
        }

        // Successful login
        return new ResponseEntity<>(existingUserDTO, HttpStatus.OK);
    }

    @PostMapping("/loginEmployee")
    public ResponseEntity<?> loginCustomer(@RequestBody User user) {
        UserDTO existingUser = userService.findByUserName(user.getUserName());
        if (existingUser == null) {
            return new ResponseEntity<>("User not found", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(existingUser, HttpStatus.OK);
    }

    @PutMapping("/{id}/updateLockedStatus")
    public ResponseEntity<?> updateStatusEmployee(@PathVariable Long id) {
        UserDTO userDTO = userService.findByIdDto(id);
        if (userDTO == null) {
            return new ResponseEntity<>("User not found", HttpStatus.NOT_FOUND);
        } else {
            if (this.userService.update(id, userDTO) != null) {
                userDTO = userService.findByIdDto(id);
                return new ResponseEntity<>(userDTO, HttpStatus.OK);
            }
            return new ResponseEntity<>("Update failed",
                    HttpStatus.BAD_REQUEST);
        }
    }

}
