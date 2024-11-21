package com.thesis.code_market.sysad;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface SysAdRepository extends JpaRepository<SysAd, Long> {
    // Tìm kiếm SysAd theo tên đăng nhập
    Optional<SysAd> findByUserName(String userName);
}