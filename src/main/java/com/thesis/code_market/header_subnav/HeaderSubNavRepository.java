package com.thesis.code_market.header_subnav;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface HeaderSubNavRepository extends JpaRepository<HeaderSubNav, Long> {

    Optional<HeaderSubNav> findByName(String name);
}