package com.thesis.code_market.application_framework;

import com.thesis.code_market.application.Application;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import java.util.Collection;

@Component
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "application_framework")
@EntityListeners(AuditingEntityListener.class)
public class ApplicationFramework {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 100)
    private String name;
    
    @OneToMany(mappedBy = "applicationFramework")
    private Collection<Application> applications;

    public ApplicationFramework(String name) {
        this.name = name;
    }

    public ApplicationFramework(ApplicationFramework framework) {
        this.id = framework.getId();
        this.name = framework.getName();
    }
}
