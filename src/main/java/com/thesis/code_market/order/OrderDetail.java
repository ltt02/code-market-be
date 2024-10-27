package com.thesis.code_market.order;

import com.thesis.code_market.application.Application;
import com.thesis.code_market.cart.CartDetail;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

@Component
@Entity
@Data
@Table(name = "order_detail")
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Long id;

    @Column(precision = 10, scale = 2)
    private BigDecimal total;

    @ManyToOne
    @JoinColumn(name = "order_id")
    // @JsonIgnore
    private Order order;

    @ManyToOne
    @JoinColumn(name = "application_id", foreignKey = @ForeignKey(value = ConstraintMode.NO_CONSTRAINT))
    private Application application;

    public OrderDetail(CartDetail cartDetail) {
        this();
//        this.total = cartDetail.getTotal();
        this.application = cartDetail.getApplication();
    }

}
