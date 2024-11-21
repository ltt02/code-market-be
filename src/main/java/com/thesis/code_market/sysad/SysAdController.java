package com.thesis.code_market.sysad;

import com.thesis.code_market.user.User;
import com.thesis.code_market.user.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/sysAds")
public class SysAdController {

    @Autowired
    SysAdService sysAdService;

    @GetMapping
    public ArrayList<SysAd> getAllSysAds() {
        return this.sysAdService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getSysAdById(@PathVariable Long id) {
        SysAd sysAd = sysAdService.findById(id);
        if (sysAd == null) {
            return new ResponseEntity<>("This sysAd is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(sysAd, HttpStatus.FOUND);
    }

    @GetMapping("/userName/{userName}")
    public ResponseEntity<?> getSysAdAccount(@PathVariable String userName) {
        UserDTO sysAd = sysAdService.findByUserName(userName);
        if (sysAd == null) {
            return new ResponseEntity<>("This sysAd is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(sysAd, HttpStatus.FOUND);
    }

    @PostMapping
    public ResponseEntity<?> addSysAd(@RequestBody SysAd sysAd) {
        // Check if sysAd is exist or not?
        // SysAd isExistedSysAd = sysAdService.findById(sysAd.getId());
        // if (isExistedSysAd == null) {
        // this.sysAdService.add(sysAd);
        // return new ResponseEntity<>(sysAd, HttpStatus.CREATED);
        // }
        // return new ResponseEntity<>("The sysAd with id=" + sysAd.getId() + "
        // existed. Try again!", HttpStatus.BAD_REQUEST);
        this.sysAdService.add(sysAd);
        return new ResponseEntity<>(sysAd, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteSysAdById(@PathVariable Long id) {
        SysAd sysAd = sysAdService.findById(id);
        if (sysAd == null) {
            return new ResponseEntity<>("This sysAd is not exist", HttpStatus.NOT_FOUND);
        }
        this.sysAdService.deleteById(id);
        return new ResponseEntity<>("A sysAd with id=" + id + " is deleted successfully", HttpStatus.OK);
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody SysAd sysAd) {
        // Check if user already exists
        UserDTO existingSysAd = sysAdService.findByUserName(sysAd.getUserName());
        if (existingSysAd != null) {
            return new ResponseEntity<>("Username already exists", HttpStatus.CONFLICT);
        }

        // Check if username and password are provided
        if (sysAd.getUserName() == null || sysAd.getUserName().isEmpty() ||
                sysAd.getPassword() == null || sysAd.getPassword().isEmpty()) {
            return new ResponseEntity<>("Username and password are required", HttpStatus.BAD_REQUEST);
        }

        // Register user
        sysAdService.add(sysAd);
        return new ResponseEntity<>(sysAd, HttpStatus.CREATED);
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody SysAd sysAd) {
        // Find user by username
        UserDTO existingUserDTO = sysAdService.findByUserName(sysAd.getUserName());
        if (existingUserDTO == null) {
            return new ResponseEntity<>("SysAd not found", HttpStatus.NOT_FOUND);
        }

        // Convert UserDTO to actual User object for password checking
        User existingUser = sysAdService.findById(existingUserDTO.getId());
        if (existingUser == null) {
            return new ResponseEntity<>("SysAd not found", HttpStatus.NOT_FOUND);
        }

        // Validate password
        if (!sysAdService.validatePassword(existingUser, sysAd.getPassword())) {
            return new ResponseEntity<>("Invalid password", HttpStatus.UNAUTHORIZED);
        }

        // Successful login
        return new ResponseEntity<>(existingUserDTO, HttpStatus.OK);
    }

    @PostMapping("/loginGoogle")
    public ResponseEntity<?> loginGGSysAd(@RequestBody SysAd sysAd) {
        UserDTO existingSysAd = sysAdService.findByUserName(sysAd.getUserName());
        if (existingSysAd == null) {
            this.sysAdService.add(sysAd);
            UserDTO getNewSysAd = sysAdService.findByUserName(sysAd.getUserName());
            return new ResponseEntity<>(getNewSysAd, HttpStatus.CREATED);
        }
        return new ResponseEntity<>(existingSysAd, HttpStatus.OK);
    }

//    @PutMapping("/{id}/updateLockedStatus")
//    public ResponseEntity<?> updateStatusSysAd(@PathVariable Long id) {
//        SysAd sysAd = sysAdService.findById(id);
//        if (sysAd == null) {
//            return new ResponseEntity<>("SysAd not found", HttpStatus.NOT_FOUND);
//        } else {
//            if (this.sysAdService.updateSysAd(id, sysAd) != null) {
//                sysAd = sysAdService.findById(id);
//                return new ResponseEntity<>(sysAd, HttpStatus.OK);
//            }
//            return new ResponseEntity<>("Update failed",
//                    HttpStatus.BAD_REQUEST);
//        }
//    }
//
//    @PutMapping("/{id}/updateInfo")
//    public ResponseEntity<?> updateInfoSysAd(@PathVariable Long id, @RequestBody SysAd sysAd) {
//        if (sysAd == null) {
//            return new ResponseEntity<>("SysAd not found", HttpStatus.NOT_FOUND);
//        } else {
//            if (this.sysAdService.updateSysAdInfo(id, sysAd) != null) {
//                sysAd = sysAdService.findById(id);
//                return new ResponseEntity<>(sysAd, HttpStatus.OK);
//            }
//            return new ResponseEntity<>("Update failed",
//                    HttpStatus.BAD_REQUEST);
//        }
//    }

}
