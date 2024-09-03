package com.thesis.code_market.developer;

import com.thesis.code_market.user.User;
import jakarta.persistence.*;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

@Component
@Entity
@DiscriminatorValue("DEVELOPER")
@EntityListeners(AuditingEntityListener.class)
public class Developer extends User {

    @Column(length = 8)
    private String studentId;

    @Column(length = 50)
    private String major;

    @Column(columnDefinition = "TEXT")
    private String skills;

    @Column(columnDefinition = "TEXT")
    private String githubProfile;

    @Column(columnDefinition = "boolean default true")
    private Boolean isAvailable;

    @Column
    private Integer graduationYear;
}
