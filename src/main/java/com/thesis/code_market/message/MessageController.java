package com.thesis.code_market.message;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/messages")
public class MessageController {
    
    @Autowired
    MessageService messageService;

    @GetMapping
    public ArrayList<Message> getAllMessages() {
        return this.messageService.getAllMessages();
    }

    // @GetMapping("/{id}")
    // public ResponseEntity<?> getMessageById(@PathVariable Long id) {
    //     Message Message = this.messageService.findMessageById(id);
    //     if (Message == null) {
    //         return new ResponseEntity<>("This Message is not exist", HttpStatus.NOT_FOUND);
    //     }
    //     return new ResponseEntity<>(Message, HttpStatus.OK);
    // }
    
    @GetMapping("/{id}")
    public ResponseEntity<?> getByConversation(@PathVariable Long id) {
        ArrayList<Message> Message = this.messageService.getAllMessagesByConversation(id);
        if (Message == null) {
            return new ResponseEntity<>("This Message is not exist", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(Message, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Message> addMessage(@RequestBody Message Message) {
        this.messageService.addMessage(Message);
        return new ResponseEntity<>(Message, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteMessageById(@PathVariable Long id) {
        Message Message = this.messageService.findMessageById(id);
        if (Message == null) {
            return new ResponseEntity<>("Can not find Message to delete", HttpStatus.NOT_FOUND);
        }
        
        this.messageService.deleteMessageById(id);
        return new ResponseEntity<>("Deleted successfully", HttpStatus.OK);
    }
    
}
