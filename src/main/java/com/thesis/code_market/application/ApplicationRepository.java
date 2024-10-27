package com.thesis.code_market.application;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
interface ApplicationRepository extends JpaRepository<Application, Long> {
    ArrayList<Application> findApplicationsByType(ApplicationType type);

    ArrayList<Application> findAllByOrderByCreatedAtDesc(Pageable pageable);

    ArrayList<Application> findAllByOrderByDownloadsDesc(Pageable pageable);

    ArrayList<Application> findAllByOrderByPriceAsc(Pageable pageable);

    ArrayList<Application> findAllByApplicationFramework_Name(String name);
}
