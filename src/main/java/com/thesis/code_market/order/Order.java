package com.thesis.code_market.order;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.thesis.code_market.coupon.Coupon;
import com.thesis.code_market.customer.Customer;
import com.thesis.code_market.developer.Developer;
import com.thesis.code_market.payment.Payment;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Component
@Entity
@Data
@Table(name = "customer_order")
@AllArgsConstructor
@NoArgsConstructor
@EntityListeners(AuditingEntityListener.class)
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Long id;

    @Column
    @CreatedDate
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Ho_Chi_Minh")
    private Date createDate;

    @Column(precision = 10, scale = 2)
    private BigDecimal total;

    @Enumerated(EnumType.STRING)
    private OrderStatus status;

    @ManyToOne
    @JoinColumn(name = "coupon_id")
    private Coupon coupon; // check later

    @ManyToOne
    @JoinColumn(name = "payment_id")
    private Payment payment;

    @OneToMany(mappedBy = "order", fetch = FetchType.EAGER)
    private List<OrderDetail> orderDetailList;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    @JsonIgnore
    private Customer customer;

    @ManyToOne
    @JoinColumn(name = "developer_id")
    @JsonIgnore
    private Developer developer;

    @Column(columnDefinition = "TEXT")
    private String note;

    public Order(OrderToPaymentDTO orderToPaymentDTO) {
        this.total = orderToPaymentDTO.getPrice();
    }

    public static Order fromDTO(OrderDTO dto) {
        Order order = new Order();
        order.setId(dto.getId());
        order.setCreateDate(dto.getCreateDate());
//        order.setTotal(dto.getTotal());
        order.setStatus(dto.getStatus());
        order.setCustomer(new Customer(dto.getCustomer()));
        order.setDeveloper(new Developer(dto.getDeveloper()));
//        List<OrderDetail> orderDetailList = dto.getOrderDetailDtoList().stream()
//                .map(OrderDetail::new) // Use the constructor
//                .toList();
//        order.setOrderDetailList(orderDetailList);

        return order;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", createDate=" + createDate +
                ", total=" + total +
                ", status=" + status +
                ", coupon=" + coupon +
                ", payment=" + payment +
                ", orderDetailList=" + orderDetailList +
                ", customer=" + customer +
                ", developer=" + developer +
                ", note='" + note + '\'' +
                '}';
    }
}
