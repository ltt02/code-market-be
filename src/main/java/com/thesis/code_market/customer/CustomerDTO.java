package com.thesis.code_market.customer;

import com.thesis.code_market.developer.Developer;
import com.thesis.code_market.major.MajorDTO;
import com.thesis.code_market.skill.SkillDTO;
import com.thesis.code_market.user.UserDTO;
import lombok.*;

import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
public class CustomerDTO extends UserDTO {
    public CustomerDTO(Customer customer) {
        super(customer);
    }
}
