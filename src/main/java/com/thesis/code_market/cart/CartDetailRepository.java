package com.thesis.code_market.cart;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    
    Optional<CartDetail> findByCartIdAndApplicationId(Long cartId, Long applicationId);
}