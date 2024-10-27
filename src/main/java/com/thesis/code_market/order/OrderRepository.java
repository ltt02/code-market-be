package com.thesis.code_market.order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
interface OrderRepository extends JpaRepository<Order, Long> {
    
    ArrayList<Order> findByCustomer_Id(Long customerId);
}

