package com.thesis.code_market.application;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
interface ApplicationRepository extends JpaRepository<Application, Long> {
//    ArrayList<Application> findApplicationsByType(ApplicationType type);

    ArrayList<Application> findAllByOrderByCreatedAtDesc(Pageable pageable);

    ArrayList<Application> findAllByOrderByDownloadsDesc(Pageable pageable);

    ArrayList<Application> findAllByOrderByPriceAsc(Pageable pageable);

//    ArrayList<Application> findAllByApplicationFramework_Name(String name);

    ArrayList<Application> findAllByDeveloper_Id(Long id);

    @Query("""
            
            SELECT new com.thesis.code_market.application.ApplicationGroupByTypeDTO(at.name, COUNT(a.id))
            FROM Application a
            LEFT JOIN ApplicationType as at on a.applicationType.id = at.id
            GROUP BY at.name
            order by at.name
            """)
    List<ApplicationGroupByTypeDTO> findApplicationsGroupedByType();
}
