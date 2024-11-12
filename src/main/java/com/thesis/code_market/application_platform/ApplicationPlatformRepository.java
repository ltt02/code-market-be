package com.thesis.code_market.application_platform;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ApplicationPlatformRepository extends JpaRepository<ApplicationPlatform, Long> {

    Optional<ApplicationPlatform> findByName(String name);
}