package com.thesis.code_market.application_framework;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ApplicationFrameworkRepository extends JpaRepository<ApplicationFramework, Long> {

    Optional<ApplicationFramework> findByName(String name);
}