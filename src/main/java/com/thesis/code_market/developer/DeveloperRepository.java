package com.thesis.code_market.developer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface DeveloperRepository extends JpaRepository<Developer, Long> {
    // Tìm kiếm Customer theo tên đăng nhập
    Optional<Developer> findByUserName(String userName);
}