package com.thesis.code_market.header_subnav;

import com.thesis.code_market.header_nav.HeaderNav;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

@Component
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "header_sub_nav")
@EntityListeners(AuditingEntityListener.class)
public class HeaderSubNav {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 100)
    private String name;

    @ManyToOne
    @JoinColumn(name = "header_nav_id", nullable = false)
    private HeaderNav headerNav;

    public HeaderSubNav(String name) {
        this.name = name;
    }

    public HeaderSubNav(HeaderSubNav item) {
        this.id = item.getId();
        this.name = item.getName();
    }
}
