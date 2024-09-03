package com.thesis.code_market.application;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
interface ApplicationRepository extends JpaRepository<Application, Long> {
    ArrayList<Application> findApplicationsByType(ApplicationType type);
}
