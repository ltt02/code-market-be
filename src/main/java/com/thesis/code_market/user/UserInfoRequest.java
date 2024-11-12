package com.thesis.code_market.user;


import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class UserInfoRequest {
    String username;
    String password;
    MultipartFile avatar;
}
