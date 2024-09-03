package com.thesis.code_market.conversation;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Transactional
public class ConversationService {
    
    @Autowired
    private ConversationRepository conversationRepository;
    
    @SuppressWarnings("null")
    void addConversation(Conversation conversation) {
        this.conversationRepository.save(conversation);
    }

    ArrayList<Conversation> getAllConversations() {
        return (ArrayList<Conversation>) this.conversationRepository.findAll();
    }

    @SuppressWarnings("null")
    public Conversation findConversationById(Long id) {
        return  this.conversationRepository.findById(id).orElse(null);
    }

    @SuppressWarnings("null")
    void deleteConversationById(Long id) {
        this.conversationRepository.deleteById(id);
    }

}
