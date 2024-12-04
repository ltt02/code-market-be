package com.thesis.code_market.review;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
interface ReviewRepository extends JpaRepository<Review, Long> {

    @Query(value = "SELECT r.* FROM review r " +
            " INNER JOIN order_detail od " +
            " ON r.order_detail_id = od.id " +
            " WHERE od.application_id = :applicationId ", nativeQuery = true)
    List<Review> findAllByApplicationId(Long applicationId);
//
//    ArrayList<Review> findByUser_Id(Long userId);
//
//    ArrayList<Review> findByOrderDetail_Id(Long orderDetailId);
//
//    ArrayList<Review> findByOrderDetail_Order_Id(Long orderId);
}