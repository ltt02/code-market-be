package com.thesis.code_market.cart;

import com.thesis.code_market.application.Application;
import com.thesis.code_market.application.ApplicationDTO;
import com.thesis.code_market.application.ApplicationService;
import com.thesis.code_market.user.UserService;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.stream.Collectors;

@Service
@Transactional
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private CartDetailRepository cartDetailRepository;

    @Autowired
    private ApplicationService applicationService;

    @Autowired
    private UserService userService;

    public CartDTO addApplicationToCart(CartDetailRequest cartDetailRequest) {
        // Tìm hoặc tạo Cart cho customer
        Cart cart = this.findOrCreateCartByCustomerId(cartDetailRequest.getCustomerId());

        // Tìm Application từ ID
        Application application = this.applicationService.findApplicationById(cartDetailRequest.getApplicationId());

        if (application == null) {
            throw new IllegalArgumentException("Application not found with id: " + cartDetailRequest.getApplicationId());
        }

        // Tạo mới hoặc cập nhật CartDetail
        CartDetail cartDetail = new CartDetail();
        cartDetail.setApplication(application);  // Gán Application cho CartDetail
        cartDetail.setCart(cart);  // Gán Cart cho CartDetail

// Kiểm tra nếu CartDetail đã tồn tại
        CartDetail existingCartDetail = this.cartDetailRepository
                .findByCartIdAndApplicationId(cart.getId(), cartDetailRequest.getApplicationId())
                .orElse(null);

        if (existingCartDetail == null) {
            cart.addCartDetail(cartDetail);  // Thêm CartDetail vào Cart
            this.cartDetailRepository.save(cartDetail);  // Lưu CartDetail trước
            this.cartRepository.save(cart);  // Lưu Cart sau
            CartDTO cartDto = new CartDTO(cart);
            return cartDto;  // Trả về CartDTO
        }

        return null;
    }



    private Cart findOrCreateCartByCustomerId(Long userId) {
        Cart cart = this.cartRepository.findByUserId(userId).orElse(new Cart());
        if (cart.getUser() == null) {
            cart.setUser(this.userService.findById(userId));
            this.cartRepository.saveAndFlush(cart);
        }
        return cart;
    }

    public ArrayList<CartDetailDTO> getAllCartDetails(Long customerId) {
        Cart cart = this.findCartByCustomerId(customerId);
        return cart.getCartDetails().stream()
                .map(cartDetail -> new CartDetailDTO(cartDetail.getId(), new ApplicationDTO(cartDetail.getApplication())))
                .collect(Collectors.toCollection(ArrayList::new));
    }

    private Cart findCartByCustomerId(Long userId) {
        Cart cart = this.cartRepository.findByUserId(userId).orElse(new Cart());

        if (cart.getUser() == null) {
            cart.setUser(this.userService.findById(userId));
            this.cartRepository.saveAndFlush(cart);
        }
        
        return cart;
    }

    @SuppressWarnings("null")
    public CartDetailDTO findCartDetailById(Long cartDetailId) {
        CartDetail cartDetail = this.cartDetailRepository.findById(cartDetailId).orElse(null);
        if (cartDetail != null) {
            return new CartDetailDTO(
                    cartDetail.getId(),
                    new ApplicationDTO(cartDetail.getApplication())
            );
        }
        return null;
    }

    @SuppressWarnings("null")
    public void deleteCartDetail(Long id) {
        this.cartDetailRepository.deleteById(id);
    }

    @SuppressWarnings("null")
    public CartDetail updateCartDetail(CartDetail cartDetail) {
        CartDetail cartDetailDB = this.cartDetailRepository.findById(cartDetail.getId()).get();

        cartDetailDB.setApplication(cartDetail.getApplication());

        return this.cartDetailRepository.saveAndFlush(cartDetailDB);
    }

}
