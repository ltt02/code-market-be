package com.thesis.code_market.customer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {
    // Tìm kiếm Customer theo tên đăng nhập
    Optional<Customer> findByUserName(String userName);
}