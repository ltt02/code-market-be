package com.thesis.code_market.customer;

import com.thesis.code_market.user.User;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

@Component
@Entity
@DiscriminatorValue("CUSTOMER")
@EntityListeners(AuditingEntityListener.class)
public class Customer extends User {

    
}
