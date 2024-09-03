package com.thesis.code_market.message;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
interface MessageRepository extends JpaRepository<Message, Long> {
    
    List<Message> findByConversation_Id(Long id);
}
