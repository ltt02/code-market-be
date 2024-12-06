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
                           DATE_FORMAT(DATE_ADD(o.create_date, INTERVAL(1 - DAYOFWEEK(o.create_date)) DAY), '%d/%m'),
                           ' - ',
                           DATE_FORMAT(DATE_ADD(o.create_date, INTERVAL(7 - DAYOFWEEK(o.create_date)) DAY), '%d/%m')
                       ) AS period,
                       SUM(o.total) AS amount
                FROM customer_order o
                WHERE o.create_date BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.create_date), WEEK(o.create_date)
                ORDER BY YEAR(o.create_date), WEEK(o.create_date)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByWeek(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


    @Query(value = """
                SELECT DATE_FORMAT(o.create_date, '%Y-%m') AS period, 
                       SUM(o.total) AS amount
                FROM customer_order o
                WHERE o.create_date BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.create_date), MONTH(o.create_date)
                ORDER BY YEAR(o.create_date), MONTH(o.create_date)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByMonth(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


    @Query(value = """
                SELECT CONCAT(YEAR(o.create_date), '-Q', QUARTER(o.create_date)) AS period, 
                       SUM(o.total) AS amount
                FROM customer_order o
                WHERE o.create_date BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.create_date), QUARTER(o.create_date)
                ORDER BY YEAR(o.create_date), QUARTER(o.create_date)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByQuarter(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


    @Query(value = """
                SELECT YEAR(o.create_date) AS period, 
                       SUM(o.total) AS amount
                FROM customer_order o
                WHERE o.create_date BETWEEN :startDate AND :endDate
                GROUP BY YEAR(o.create_date)
                ORDER BY YEAR(o.create_date)
            """, nativeQuery = true)
    List<Object[]> sumTotalGroupByYear(@Param("startDate") Date startDate, @Param("endDate") Date endDate);


}

