package com.thesis.code_market.header_nav;

import com.thesis.code_market.header_subnav.HeaderSubNav;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "header_nav")
@EntityListeners(AuditingEntityListener.class)
public class HeaderNav {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 100)
    private String name;

    @OneToMany(mappedBy = "headerNav", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<HeaderSubNav> subNavList;

    public HeaderNav(String name) {
        this.name = name;
    }

    public HeaderNav(HeaderNav item) {
        this.id = item.getId();
        this.name = item.getName();
    }
}
