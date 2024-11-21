package com.thesis.code_market.sysad;

import com.thesis.code_market.user.User;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

@Component
@Entity
@DiscriminatorValue("SYSAD")
@EntityListeners(AuditingEntityListener.class)
public class SysAd extends User {
    public SysAd(SysAdDTO sysAdDTO) {
        super(sysAdDTO.getUserName(), sysAdDTO.getFullName(),
                sysAdDTO.getEmail(), sysAdDTO.getPassword(), sysAdDTO.getPhone(),
                sysAdDTO.getAvatar(), sysAdDTO.getDob());
    }

    public SysAd() {

    }
}
