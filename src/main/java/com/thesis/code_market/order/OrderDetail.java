package com.thesis.code_market.order;

import com.thesis.code_market.application.Application;
import com.thesis.code_market.cart.CartDetail;
import com.thesis.code_market.review.Review;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

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
    @JoinColumn(name = "application_id")
    private Application application;

    @OneToMany(mappedBy = "orderDetail", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Review> reviews = new ArrayList<>();

    public OrderDetail(CartDetail cartDetail) {
        this();
//        this.total = cartDetail.getTotal();
        this.application = cartDetail.getApplication();
    }

    public OrderDetail(OrderDetailDTO orderDetailDto) {
        this.order = Order.fromDTO(orderDetailDto.getOrder());
        this.application = Application.fromDTO(orderDetailDto.getApplication());
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", total=" + total +
                ", order=" + order +
                ", application=" + application +
                '}';
    }
}
