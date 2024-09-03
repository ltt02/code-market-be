package com.thesis.code_market.conversation;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.thesis.code_market.user.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@Entity
@Data
@Table(name = "conversation")
@AllArgsConstructor
@NoArgsConstructor
public class Conversation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Long id;

    @Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Ho_Chi_Minh")
    private Date startTime;

    @Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Ho_Chi_Minh")
    private Date endTime;

    @JoinColumn(name = "sender", referencedColumnName = "userName",
                columnDefinition = "VARCHAR(20)", 
                foreignKey = @jakarta.persistence.ForeignKey(value = ConstraintMode.NO_CONSTRAINT))
    @ManyToOne(targetEntity=User.class)
    private User sender;
    
    @JoinColumn(name = "receiver", referencedColumnName = "userName",
                columnDefinition = "VARCHAR(20)", 
                foreignKey = @jakarta.persistence.ForeignKey(value = ConstraintMode.NO_CONSTRAINT))
    @ManyToOne(targetEntity=User.class)
    private User receiver;

}
