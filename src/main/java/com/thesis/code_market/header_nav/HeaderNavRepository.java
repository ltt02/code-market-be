package com.thesis.code_market.header_nav;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface HeaderNavRepository extends JpaRepository<HeaderNav, Long> {

    Optional<HeaderNav> findByName(String name);
}