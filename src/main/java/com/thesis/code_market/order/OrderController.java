package com.thesis.code_market.order;

import com.thesis.code_market.review.ReviewDTO;
import com.thesis.code_market.review.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/customers/{customerId}/orders")
public class OrderController {

    @Autowired
    OrderService orderService;

    @Autowired
    ReviewService reviewService;

    @GetMapping
    public ResponseEntity<List<OrderDTO>> getAllOrders(@PathVariable Long customerId) {
        return new ResponseEntity<>(this.orderService.findAllOrders(customerId), HttpStatus.OK);
    }

    @GetMapping("/all")
    public ResponseEntity<List<OrderDTO>> getAll(@PathVariable Long customerId) {
        return new ResponseEntity<>(this.orderService.findAll(), HttpStatus.OK);
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

    @PostMapping("/detail/{detailId}")
    public ResponseEntity<?> addReviewToOrderDetail(@PathVariable Long detailId, @RequestBody ReviewDTO review) {
        return new ResponseEntity<>(this.reviewService.addReview(detailId, review), HttpStatus.OK);
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

    @PostMapping("/amount-chart")
    public Map<String, Object> sumTotalGroupBy(@RequestBody OrderAmountByPeriodRequest request) {
        List<OrderAmountByPeriodDTO> result = this.orderService.sumTotalGroupBy(request.getPeriod(), request.getStartDate(), request.getEndDate());
        return this.orderService.separateTimeAndAmount(result);
    }

}
