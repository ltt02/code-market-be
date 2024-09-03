package com.thesis.code_market.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/customers/{customerId}/cart")
public class CartController {

    @Autowired
    CartService cartService;

    @PostMapping
    public ResponseEntity<?> addApplicationToCart(@PathVariable Long customerId, @RequestBody CartDetailRequest cartDetailRequest) {
        CartDTO cartDTO = cartService.addApplicationToCart(cartDetailRequest.getApplicationId(), customerId, cartDetailRequest);
        if (cartDTO == null) {
            return new ResponseEntity<>("This application is existed", HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(cartDTO, HttpStatus.CREATED);
    }


    @GetMapping
    public ResponseEntity<?> getCart(@PathVariable Long customerId) {
        ArrayList<CartDetailDTO> cartDetails = this.cartService.getAllCartDetails(customerId);
        if (!cartDetails.isEmpty()) {
            return new ResponseEntity<>(cartDetails, HttpStatus.OK);
        }
        return new ResponseEntity<>("This cart is empty", HttpStatus.OK);
    }

    @GetMapping("/{cartDetailId}")
    public ResponseEntity<?> getCartDetail(@PathVariable Long cartDetailId) {
        CartDetailDTO cartDetailDTO = this.cartService.findCartDetailById(cartDetailId);
        if (cartDetailDTO != null) {
            return new ResponseEntity<>(cartDetailDTO, HttpStatus.OK);
        }
        return new ResponseEntity<>("This cart detail is not exist", HttpStatus.NOT_FOUND);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteCartDetail(@PathVariable(value = "customerId") Long customerId, @PathVariable(value = "id") Long id) {
        this.cartService.deleteCartDetail(id);
        return new ResponseEntity<>(this.cartService.getAllCartDetails(customerId), HttpStatus.OK);
    }

//    @PutMapping("/{cartDetailId}")
//    public ResponseEntity<?> updateCartDetail(@PathVariable Long cartDetailId,
//            @RequestBody CartDetail cartDetail) {
//        CartDetail updatedCartDetail = this.cartService.updateCartDetail(cartDetail);
//
//        return new ResponseEntity<>(updatedCartDetail, HttpStatus.OK);
//    }

}
