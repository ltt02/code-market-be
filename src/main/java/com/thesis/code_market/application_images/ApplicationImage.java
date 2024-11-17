package com.thesis.code_market.application_images;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.thesis.code_market.application.Application;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

@Component
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "application_image")
@EntityListeners(AuditingEntityListener.class)
public class ApplicationImage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(columnDefinition = "LONGTEXT")
    private String link;

    @Column
    private BigDecimal size;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "application_id")
    private Application application;

    public ApplicationImage(String link) {
        this.link = link;
    }

    public ApplicationImage(ApplicationImage image) {
        this.id = image.getId();
        this.link = image.getLink();
    }

    public ApplicationImage(ApplicationImageDTO imageDTO) {
        this.id = imageDTO.getId();
        this.link = imageDTO.getLink();
    }
}
