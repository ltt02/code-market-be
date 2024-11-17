package com.thesis.code_market.application_images;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ApplicationImageRepository extends JpaRepository<ApplicationImage, Long> {

    List<ApplicationImage> findAllByApplicationId(Long id);
}