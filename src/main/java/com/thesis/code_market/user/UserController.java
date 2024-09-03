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
        return new ResponseEntity<>(userDTO, HttpStatus.FOUND);
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
        User user = userService.findByUserName(username);
        if (user == null) {
            return new ResponseEntity<>("This user is not exist", HttpStatus.NOT_FOUND);
        }

        return new ResponseEntity<>(user, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<?> addUser(@RequestBody User user) {
        User isExistedUser = this.userService.findByUserName(user.getUserName());
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

    @PostMapping("/loginEmployee")
    public ResponseEntity<?> loginCustomer(@RequestBody User user) {
        User existingUser = userService.findByUserName(user.getUserName());
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
