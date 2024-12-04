package com.thesis.code_market.review;

import com.thesis.code_market.order.OrderDetail;
import com.thesis.code_market.order.OrderService;
import com.thesis.code_market.user.User;
import com.thesis.code_market.user.UserDTO;
import com.thesis.code_market.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Service
public class ReviewService {
    
    @Autowired
    ReviewRepository reviewRepository;

//    @Autowired
//    ApplicationService applicationService;
//
    @Autowired
    OrderService orderService;

    @Autowired
    UserService userService;

    public List<ReviewDTO> findAllByApplicationId(Long applicationId) {
        List<Review> reviewsDB = this.reviewRepository.findAllByApplicationId(applicationId);
        List<ReviewDTO> reviewDTOs = reviewsDB.stream().map(ReviewDTO::new).toList();
        List<ReviewDTO> reviewsReverse = new ArrayList<>(reviewDTOs);
        Collections.reverse(reviewsReverse);
        return reviewsReverse;
    }

    public Review addReview(Long orderDetailId, ReviewDTO reviewDTO) {
        Review review = new Review();
        OrderDetail orderDetail = this.orderService.findOrderDetailById(orderDetailId);
        UserDTO user = this.userService.findByIdDto(reviewDTO.getUserId());
        review.setOrderDetail(orderDetail);
        review.setUser(User.fromDto(user));
        review.setContent(reviewDTO.getContent());
        review.setRate(reviewDTO.getRate());
        review.setCreateDate(new Date());
        return this.reviewRepository.save(review);
    }
//
//    void addReview(Long orderDetailId, Review review) {
//        OrderDetail orderDetail = this.orderService.findOrderDetailById(orderDetailId);
//        review.setOrderDetail(orderDetail);
//        Customer customer = orderDetail.getOrder().getCustomer();
//        review.setUser(customer);
//        this.reviewRepository.save(review);
//    }
//
//    ArrayList<Review> getAllReviews() {
//        ArrayList<Review> reviewsDB = (ArrayList<Review>) this.reviewRepository.findAll();
//        ArrayList<Review> reviewsReverse = new ArrayList<>(reviewsDB);
//        Collections.reverse(reviewsReverse);
//        return reviewsReverse;
//    }
//
//    ArrayList<Review> getAllReviewsByUserId(Long userId) {
//        ArrayList<Review> reviewsDB = this.reviewRepository.findByUser_Id(userId);
//        ArrayList<Review> reviewsReverse = new ArrayList<>(reviewsDB);
//        Collections.reverse(reviewsReverse);
//        return reviewsReverse;
//    }
//
//    ArrayList<Review> getAllReviewsByProductId(Long productId) {
//        ArrayList<Review> reviewsDB = this.reviewRepository.findByOrderDetail_ProductDetail_Product_Id(productId);
//        ArrayList<Review> reviewsReverse = new ArrayList<>(reviewsDB);
//        Collections.reverse(reviewsReverse);
//        return reviewsReverse;
//    }
//
//    @SuppressWarnings("null")
//    public Review findReviewById(Long id) {
//        return this.reviewRepository.findById(id).orElse(null);
//    }
//
//    public ArrayList<Review> findReviewByOrderDetailId(Long id) {
//        return this.reviewRepository.findByOrderDetail_Id(id);
//    }
//
//    public ArrayList<Review> findReviewByOrderId(Long id) {
//        return this.reviewRepository.findByOrderDetail_Order_Id(id);
//    }
//
//    @SuppressWarnings("null")
//    void deleteReviewById(Long id) {
//        this.reviewRepository.deleteById(id);
//    }
//
//    Review updateReviewImages(Long id, String images) {
//        Review review = this.findReviewById(id);
//        review.setImageUrls(images);
//        return this.reviewRepository.save(review);
//    }

}
