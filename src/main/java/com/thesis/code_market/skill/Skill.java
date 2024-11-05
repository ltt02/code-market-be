
package com.thesis.code_market.skill;

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
@Table(name = "skill")
@NoArgsConstructor
public class Skill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @JsonIgnore
    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "skills")
    private List<Developer> developers;
}