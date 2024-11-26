package com.thesis.code_market.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findUserByUserName(String userName);

    @Query(value = "SELECT user_type, COUNT(*) FROM user GROUP BY user_type", nativeQuery = true)
    List<Object[]> countUsersByUserType();
}