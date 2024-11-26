package com.thesis.code_market.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/customers/{customerId}/orders")
public class OrderController {

    @Autowired
    OrderService orderService;

    @GetMapping
    public ResponseEntity<List<OrderDTO>> getAllOrders(@PathVariable Long customerId) {
        return new ResponseEntity<>(this.orderService.findAllOrders(customerId), HttpStatus.OK);
    }

    @GetMapping("/developer/{developerId}")
    public ResponseEntity<List<OrderDTO>> getAllOrdersByDeveloper(@PathVariable Long developerId) {
        return new ResponseEntity<>(this.orderService.findAllOrdersByDeveloperId(developerId), HttpStatus.OK);
    }

    @GetMapping("/{orderId}")
    public ResponseEntity<OrderDTO> getOrder(@PathVariable Long orderId) {
        return new ResponseEntity<>(this.orderService.findOrderById(orderId), HttpStatus.OK);
    }

    @GetMapping("/{id}/details")
    public ResponseEntity<List<OrderDetailDTO>> getAllOrderDetails(@PathVariable Long id) {
        return new ResponseEntity<>(this.orderService.findAllOrderDetailsByOrder(id), HttpStatus.OK);
    }

    @PostMapping("/author/{authorId}")
    public ResponseEntity<Order> addOrder(@PathVariable Long customerId, @PathVariable Long authorId, @RequestBody Order order) {
        this.orderService.addOrder(customerId, authorId, order);
        return new ResponseEntity<>(order, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteOrderById(@PathVariable Long id) {
        OrderDTO orderDTO = this.orderService.findOrderById(id);
        if (orderDTO == null) {
            return new ResponseEntity<>("Can not find order to cancel", HttpStatus.NOT_FOUND);
        }

        this.orderService.cancelOrder(id);
        return new ResponseEntity<>("Canceled successfully", HttpStatus.OK);
    }

    @PostMapping("/{orderId}")
    public ResponseEntity<List<OrderDetailDTO>> addOrderDetailsToOrder(
            @PathVariable Long orderId, @RequestBody Long[] cartDetailsList) {
        return new ResponseEntity<>(this.orderService.addOrderDetailsToOrder(orderId, cartDetailsList),
                HttpStatus.CREATED);
    }

    @PutMapping("/{orderId}")
    public ResponseEntity<?> updateOrder(@PathVariable Long orderId, @RequestBody OrderPaymentUpdateDTO dto) {
//        System.out.println("New order detail: " + orderDTO);
        if (this.orderService.findOrderById(orderId) == null) {
            return new ResponseEntity<>("Not found Order", HttpStatus.NOT_FOUND);
        }
        this.orderService.updateOrder(orderId, dto);
        return new ResponseEntity<>("OK", HttpStatus.OK);
    }

}
