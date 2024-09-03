package com.thesis.code_market.application_category;

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
@Table(name = "application_category")
@EntityListeners(AuditingEntityListener.class)
public class ApplicationCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 100)
    private String name;

    @ManyToMany(mappedBy = "applicationCategoryList")
    private Collection<Application> applications;

    public ApplicationCategory(String name) {
        this.name = name;
    }

    public ApplicationCategory(ApplicationCategory category) {
        this.id = category.getId();
        this.name = category.getName();
    }
}
