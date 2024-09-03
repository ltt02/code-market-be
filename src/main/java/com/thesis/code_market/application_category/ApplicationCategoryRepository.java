package com.thesis.code_market.application_category;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ApplicationCategoryRepository extends JpaRepository<ApplicationCategory, Long> {

    Optional<ApplicationCategory> findByName(String name);
}