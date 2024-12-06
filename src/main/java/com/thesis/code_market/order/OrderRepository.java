package com.thesis.code_market.order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
interface OrderRepository extends JpaRepository<Order, Long> {

    ArrayList<Order> findByCustomer_Id(Long customerId);

    ArrayList<Order> findAllByDeveloper_Id(Long developerId);

    @Query(value = """
                SELECT CONCAT(
                           DATE_FORMAT(DATE_ADD(o.created_at, INTERVAL(1 - DAYOFWEEK(o.created_at)) DAY), '%d/%m'),
                           ' - ',
                           DATE_FORMAT(DATE_ADD(o.created_at, INTERVAL(7 - DAYOFWEEK(o.created_at)) DAY), '%d/%m')
                       ) AS period,
                       SUM(o.total) AS amount
                FROM orders o
                WHERE o.created_at BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.created_at), WEEK(o.created_at)
                ORDER BY YEAR(o.created_at), WEEK(o.created_at)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByWeek(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


    @Query(value = """
                SELECT DATE_FORMAT(o.created_at, '%Y-%m') AS period, 
                       SUM(o.total) AS amount
                FROM orders o
                WHERE o.created_at BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.created_at), MONTH(o.created_at)
                ORDER BY YEAR(o.created_at), MONTH(o.created_at)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByMonth(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


    @Query(value = """
                SELECT CONCAT(YEAR(o.created_at), '-Q', QUARTER(o.created_at)) AS period, 
                       SUM(o.total) AS amount
                FROM orders o
                WHERE o.created_at BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.created_at), QUARTER(o.created_at)
                ORDER BY YEAR(o.created_at), QUARTER(o.created_at)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByQuarter(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


    @Query(value = """
                SELECT YEAR(o.created_at) AS period, 
                       SUM(o.total) AS amount
                FROM orders o
                WHERE o.created_at BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.created_at)
                ORDER BY YEAR(o.created_at)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByYear(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


}

