package com.thesis.code_market.order;

import com.thesis.code_market.application.ApplicationService;
import com.thesis.code_market.cart.CartService;
import com.thesis.code_market.customer.Customer;
import com.thesis.code_market.customer.CustomerService;
import com.thesis.code_market.developer.Developer;
import com.thesis.code_market.developer.DeveloperService;
import com.thesis.code_market.payment.Payment;
import com.thesis.code_market.payment.PaymentRepository;
import com.thesis.code_market.payment.PaymentService;
import jakarta.transaction.Transactional;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
@Transactional
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private DeveloperService developerService;

    @Autowired
    private CartService cartService;

    @Autowired
    private PaymentRepository paymentRepository;

    @Autowired
    private ApplicationService applicationService;

    @Autowired
    private ModelMapper modelMapper;

    public void addOrder(Long customerId, Long authorId, Order order) {
        Customer customer = this.customerService.findById(customerId);
        Developer developer = this.developerService.findById(authorId);
        order.setCreateDate(new Date());
        order.setCustomer(customer);
        order.setDeveloper(developer);
        this.orderRepository.save(order);
    }

    List<OrderDTO> findAllOrders(Long customerId) {
        ArrayList<Order> ordersDB = this.orderRepository.findByCustomer_Id(customerId);
        List<OrderDTO> orderDTOS = ordersDB.stream().map(OrderDTO::new).toList();
        List<OrderDTO> ordersReverse = new ArrayList<>(orderDTOS);
        Collections.reverse(ordersReverse);
        return ordersReverse;
    }

    List<OrderDTO> findAllOrdersByDeveloperId(Long developerId) {
        ArrayList<Order> ordersDB = this.orderRepository.findAllByDeveloper_Id(developerId);
        List<OrderDTO> orderDTOS = ordersDB.stream().map(OrderDTO::new).toList();
        List<OrderDTO> ordersReverse = new ArrayList<>(orderDTOS);
        Collections.reverse(ordersReverse);
        return ordersReverse;
    }

    ArrayList<Order> findAll() {
        return (ArrayList<Order>) this.orderRepository.findAll();
    }

    @SuppressWarnings("null")
    public OrderDTO findOrderById(Long id) {
        Order order = this.orderRepository.findById(id).orElse(null);
        if (order != null) {
            return new OrderDTO(order);
        }
        return null;
    }

    @SuppressWarnings("null")
    void cancelOrder(Long orderId) {
        this.orderRepository.deleteById(orderId);
    }

    List<OrderDetailDTO> addOrderDetailsToOrder(Long orderId, Long[] cartDetailsIdList) {
        List<OrderDetailDTO> orderDetailDTOList = new ArrayList<>();
        Order order = this.orderRepository.findById(orderId).orElse(null);
        if (order != null) {
            Arrays.stream(cartDetailsIdList).forEach(id -> {
                OrderDetailDTO orderDetailDto = new OrderDetailDTO(this.cartService.findCartDetailById(id));
                orderDetailDto.setOrder(new OrderDTO(order));
                orderDetailDTOList.add(orderDetailDto);
                OrderDetail orderDetail = new OrderDetail(orderDetailDto);
                this.cartService.deleteCartDetail(id);
                this.orderDetailRepository.save(orderDetail);

//            Application application = this.applicationService.findApplicationById(orderDetail.getApplication().getId());
//            application.setSold(application.getSold() + orderDetail.getQuantity());
//            this.applicationService.updateProductDetail(application);
            });
        }
        return orderDetailDTOList;
    }

    List<OrderDetailDTO> findAllOrderDetailsByOrder(Long orderId) {
        List<OrderDetail> orderDetailList = this.orderDetailRepository.findByOrder_Id(orderId);
        return orderDetailList.stream().map(OrderDetailDTO::new).collect(Collectors.toList());
    }

    @SuppressWarnings("null")
    public OrderDetail findOrderDetailById(Long id) {
        return this.orderDetailRepository.findById(id).orElse(null);
    }

    public void updateOrder(Long orderId, OrderPaymentUpdateDTO dto) {
        Order orderDB = this.orderRepository.findById(orderId).orElse(null);

        // orderDB.setOrderDetails(order.getOrderDetails());
        if (dto.getStatus() != null) {
            orderDB.setStatus(dto.getStatus());
        }
//        if (orderDTO.getCoupon() != null) {
//            orderDB.setCoupon(orderDTO.getCoupon());
//        }
//        if (orderDTO.getPayment() != null) {
//            orderDB.setPayment(orderDTO.getPayment());
//        }
        Payment payment = this.paymentRepository.findById(dto.getPaymentId()).orElse(null);
        orderDB.setPayment(payment);
//        System.out.println("New order detail saved in DB: " + orderDB);
        this.orderRepository.save(orderDB);
    }
}