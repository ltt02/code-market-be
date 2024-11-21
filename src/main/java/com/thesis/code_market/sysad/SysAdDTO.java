package com.thesis.code_market.sysad;

import com.thesis.code_market.user.UserDTO;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SysAdDTO extends UserDTO {
    public SysAdDTO(SysAd sysAd) {
        super(sysAd);
    }
}
