package com.thesis.code_market.order;

import com.thesis.code_market.application_category.ApplicationCategoryDTO;
import com.thesis.code_market.customer.Customer;
import com.thesis.code_market.customer.CustomerDTO;
import com.thesis.code_market.developer.DeveloperDTO;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
public class OrderDTO {
    private Long id;
    private Date createDate;
    private BigDecimal total;
    private OrderStatus status;
    private List<OrderDetailDTO> orderDetailDtoList;
    private CustomerDTO customer;
    private DeveloperDTO developer;

    public OrderDTO(Long id, Date createDate, BigDecimal total, OrderStatus status, List<OrderDetailDTO> orderDetailDtoList, CustomerDTO customer, DeveloperDTO developer) {
        this.id = id;
        this.createDate = createDate;
        this.total = total;
        this.status = status;
        this.orderDetailDtoList = orderDetailDtoList;
        this.customer = customer;
        this.developer = developer;
    }

    public OrderDTO(Order order) {
        this.id = order.getId();
        this.createDate = order.getCreateDate();
        this.total = order.getTotal();
        this.status = order.getStatus();
//        this.orderDetailDtoList = order.getOrderDetailList().stream().map(OrderDetailDTO::new).collect(Collectors.toList());
        this.customer = new CustomerDTO(order.getCustomer());
        this.developer = new DeveloperDTO(order.getDeveloper());
    }
}
