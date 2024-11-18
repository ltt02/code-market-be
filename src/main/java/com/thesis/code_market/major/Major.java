package com.thesis.code_market.major;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.thesis.code_market.developer.Developer;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Entity
@Data
@Table(name = "major")
@NoArgsConstructor
public class Major {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "major", cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.PERSIST})
    private List<Developer> developers;

    public Major(MajorDTO majorDTO) {
        this.name = majorDTO.getName();
    }
}