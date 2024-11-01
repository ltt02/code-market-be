package com.thesis.code_market.payment;

import com.thesis.code_market.order.Order;
import com.thesis.code_market.order.OrderService;
import jakarta.servlet.ServletException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@RequestMapping("/payment")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    @Autowired
    private OrderService orderService;

    @GetMapping
    public ResponseEntity<?> getAllPayment() {
        return new ResponseEntity<>(this.paymentService.findAllPayments(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getPaymentById(@PathVariable Long id) {
        Payment payment = this.paymentService.findPaymentById(id);
        if (payment == null) {
            return new ResponseEntity<>("This payment is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(payment, HttpStatus.FOUND);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deletePaymentById(@PathVariable Long id) {
        Payment payment = this.paymentService.findPaymentById(id);
        if (payment == null) {
            return new ResponseEntity<>("This payment is not exist", HttpStatus.NOT_FOUND);
        }

        this.paymentService.deletePayment(id);
        return new ResponseEntity<>("A payment with id=" + id + " is deleted successfully", HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updatePaymentById(@PathVariable Long id, @RequestBody Payment payment) {
        if (this.paymentService.updatePayment(id, payment) != null) {
            return new ResponseEntity<>("A payment with id=" + id + " is updated successfully", HttpStatus.OK);
        }
        return new ResponseEntity<>("The payment with id=" + payment.getId() + " fail updated. Try again!",
                HttpStatus.BAD_REQUEST);
    }

    // @PostMapping("/")
    // public ResponseEntity<?> addPayment(@RequestBody Payment payment) {
    //     Payment isExistedPayment = this.paymentService.findPaymentById(payment.getId());
    //     if (isExistedPayment == null) {
    //         this.paymentService.addPayment(payment);
    //         return new ResponseEntity<>(payment, HttpStatus.CREATED);
    //     }
    //     return new ResponseEntity<>("The payment with id=" + payment.getId() + " existed. Try again!",
    //             HttpStatus.BAD_REQUEST);
    // }

    @PostMapping("/{orderId}/vnpay")
    public ResponseEntity<?> addPaymentByVNPay(@PathVariable("orderId") Long orderId, @RequestBody Payment payment) throws ServletException, IOException {
        Payment newPayment = this.paymentService.addPayment(payment);
        String paymentUrl = this.paymentService.getVNPayTransaction(orderId, payment);
        newPayment.setPaymentUrl(paymentUrl);

        this.paymentService.updatePayment(newPayment.getId(), newPayment);
        Order order = this.orderService.findOrderById(orderId);
        order.setPayment(newPayment);
        this.orderService.updateOrder(orderId, order);

        return new ResponseEntity<>(paymentUrl, HttpStatus.OK);
    }

    @PostMapping("/{orderId}/cod")
    public ResponseEntity<?> addPaymentByCOD(@PathVariable("orderId") Long orderId, @RequestBody Payment payment) throws ServletException, IOException {
        Payment newPayment = this.paymentService.addPayment(payment);
        
        Order order = this.orderService.findOrderById(orderId);
        order.setPayment(newPayment);
        this.orderService.updateOrder(orderId, order);

        return new ResponseEntity<>(newPayment, HttpStatus.OK);
    }

}
