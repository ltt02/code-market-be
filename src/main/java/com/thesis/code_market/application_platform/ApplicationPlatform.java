package com.thesis.code_market.application_platform;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
@Table(name = "application_platform")
@EntityListeners(AuditingEntityListener.class)
public class ApplicationPlatform {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 100)
    private String name;

    @JsonIgnore
    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "applicationPlatformList")
    private Collection<Application> applications;

    public ApplicationPlatform(String name) {
        this.name = name;
    }

    public ApplicationPlatform(ApplicationPlatform platform) {
        this.id = platform.getId();
        this.name = platform.getName();
    }

    public ApplicationPlatform(ApplicationPlatformDTO platformDTO) {
        this.id = platformDTO.getId();
        this.name = platformDTO.getName();
    }
}
