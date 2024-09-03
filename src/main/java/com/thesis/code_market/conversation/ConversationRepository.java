package com.thesis.code_market.conversation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface ConversationRepository extends JpaRepository<Conversation, Long> {
    
}
