package com.thesis.code_market.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDTO {
    private Long id;
    private String content;
    private float rate;
    private Date createAt;
    private Long userId;
    private Long orderDetailId;

    public ReviewDTO(Review review) {
        this.id = review.getId();
        this.content = review.getContent();
        this.rate = review.getRate();
        this.createAt = review.getCreateDate();
        this.userId = review.getUser().getId();
        this.orderDetailId = review.getOrderDetail().getId();
    }
}