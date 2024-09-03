package com.thesis.code_market.user;

import com.thesis.code_market.application.ApplicationDTO;
import com.thesis.code_market.role.RoleDTO;
import lombok.*;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class UserDTO {
    private Long id;
    private String userName;
    private String password;
    private String fullName;
    private String phone;
    private String email;
    private String userType;
    private String address;
    private Date dob;
    private Boolean locked;
    private List<RoleDTO> roles;
    private List<ApplicationDTO> applicationList;

    public UserDTO(User user) {
        this.id = user.getId();
        this.userName = user.getUserName();
        this.password = user.getPassword();
        this.fullName = user.getFullName();
        this.phone = user.getPhoneNumber();
        this.email = user.getEmail();
        this.userType = user.getUserType();
        this.dob = user.getDob();
        this.locked = user.isLocked();
        this.roles = user.getRoles().stream().map(RoleDTO::new).collect(Collectors.toList());
        this.applicationList = user.getApplicationList().stream().map(ApplicationDTO::new).collect(Collectors.toList());
    }
}
