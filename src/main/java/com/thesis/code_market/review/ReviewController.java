package com.thesis.code_market.review;

//import com.thesis.code_market.CloudinaryService;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/products/{productId}/reviews")
@RequiredArgsConstructor
public class ReviewController {

//    @Autowired
//    ReviewService ReviewService;

//    private final CloudinaryService cloudinaryService;

//    @GetMapping
//    public ResponseEntity<ArrayList<Review>> getAllReviewsByProductId(@PathVariable Long productId,
//            @RequestParam("all") boolean isGetAllProduct) {
//
//        ArrayList<Review> reviews;
//
//        if (isGetAllProduct) {
//            reviews = this.ReviewService.getAllReviews();
//        }
//        else reviews = this.ReviewService.getAllReviewsByProductId(productId);
//        return new ResponseEntity<>(reviews, HttpStatus.OK);
//    }
//
//    @GetMapping("/customer/{userId}")
//    public ResponseEntity<ArrayList<Review>> getAllReviewsByCustomerId(@PathVariable Long userId) {
//        ArrayList<Review> reviews = this.ReviewService.getAllReviewsByUserId(userId);
//        return new ResponseEntity<>(reviews, HttpStatus.OK);
//    }
//
//    @GetMapping("/{id}")
//    public ResponseEntity<?> getReviewById(@PathVariable Long id) {
//        Review review = this.ReviewService.findReviewById(id);
//        if (review == null) {
//            return new ResponseEntity<>("This review is not exist", HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<>(review, HttpStatus.OK);
//    }
//
//    @GetMapping("orders/{orderId}")
//    public ResponseEntity<?> getReviewByOrderId(@PathVariable Long orderId) {
//        ArrayList<Review> reviews = this.ReviewService.findReviewByOrderId(orderId);
//        if (reviews == null) {
//            return new ResponseEntity<>("This review is not exist", HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<>(reviews, HttpStatus.OK);
//    }
//
//    @GetMapping("/order-details/{orderDetailId}")
//    public ResponseEntity<?> getReviewByOrderDetailId(@PathVariable Long orderDetailId) {
//        ArrayList<Review> review = this.ReviewService.findReviewByOrderDetailId(orderDetailId);
//        if (review == null) {
//            return new ResponseEntity<>("This review is not exist", HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<>(review, HttpStatus.OK);
//    }
//
//    @PostMapping(value = "/order-details/{orderDetailId}")
//    public ResponseEntity<Review> addReview(@PathVariable Long orderDetailId,
//            @RequestBody Review review) {
//        this.ReviewService.addReview(orderDetailId, review);
//        return new ResponseEntity<>(review, HttpStatus.CREATED);
//    }
//
//    @DeleteMapping("/{id}")
//    public ResponseEntity<String> deleteReviewById(@PathVariable Long id) {
//        Review Review = this.ReviewService.findReviewById(id);
//        if (Review == null) {
//            return new ResponseEntity<>("Can not find review to delete", HttpStatus.NOT_FOUND);
//        }
//
//        this.ReviewService.deleteReviewById(id);
//        return new ResponseEntity<>("Deleted successfully", HttpStatus.OK);
//    }

//    @PutMapping(value = "{id}/upload")
//    public ResponseEntity<?> upload(@PathVariable Long id, @RequestParam("images") List<MultipartFile> files)
//            throws IOException {
//        StringBuilder imageUrls = new StringBuilder();
//
//        for (MultipartFile multipartFile : files) {
//            String imageUrl = this.cloudinaryService.uploadFile(multipartFile);
//
//            imageUrls.append(imageUrl);
//
//            if (multipartFile != files.get(files.size() - 1))
//                imageUrls.append(",");
//        }
//
//        Review review = this.ReviewService.updateReviewImages(id, imageUrls.toString());
//
//        return new ResponseEntity<>(review, HttpStatus.OK);
//    }

}
