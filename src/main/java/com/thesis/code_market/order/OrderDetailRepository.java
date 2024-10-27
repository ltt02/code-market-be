package com.thesis.code_market.order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {
    
    ArrayList<OrderDetail> findByOrder_Id(Long orderId);
}

