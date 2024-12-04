package com.thesis.code_market.user;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.thesis.code_market.review.Review;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.util.Date;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "user")
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(name = "user_type", discriminatorType = DiscriminatorType.STRING)
@EntityListeners(AuditingEntityListener.class)
public class User {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column(length = 50, unique = true, nullable = false)
        private String userName;

        @Column(length = 30)
        private String fullName;

        @Column(length = 80)
        private String email;

        @Column(columnDefinition = "TEXT")
        private String password;

        @Column(length = 12)
        private String phoneNumber;

        @Column(columnDefinition = "TEXT")
        private String avatar;

        @Temporal(value = TemporalType.DATE)
        @JsonFormat(pattern = "yyyy-MM-dd")
        private Date dob;

        @OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
        private List<Review> reviews;

        @Column(name = "created_at")
        @Temporal(value = TemporalType.TIMESTAMP)
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Ho_Chi_Minh")
        @CreatedDate
        private Date createdAt;

        @Column(name = "updated_at")
        @Temporal(value = TemporalType.TIMESTAMP)
        private Date updatedAt;

//        @JsonIgnore
//        @ManyToMany(fetch = FetchType.EAGER)
//        @JoinTable(name = "users_roles", joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
//        private List<Role> roles;

        @Column(columnDefinition = "boolean default false")
        private boolean locked;

        @Column(name = "user_type", insertable = false, updatable = false)
        private String userType;

        public User(Long id, String userName, String fullName, String email, String password, String phoneNumber, String avatar, Date dob, Date createdAt, Date updatedAt, boolean locked) {
                this.id = id;
                this.userName = userName;
                this.fullName = fullName;
                this.email = email;
                this.password = password;
                this.phoneNumber = phoneNumber;
                this.avatar = avatar;
                this.dob = dob;
                this.createdAt = createdAt;
                this.updatedAt = updatedAt;
                this.locked = locked;
        }

        @Transient
        public String getUserType() {
                DiscriminatorValue discriminatorValue = this.getClass().getAnnotation(DiscriminatorValue.class);
                return discriminatorValue != null ? discriminatorValue.value() : null;        }

        public User(String userName, String fullName, String email, String password, String phoneNumber, String avatar, Date dob) {
                this.userName = userName;
                this.fullName = fullName;
                this.email = email;
                this.password = password;
                this.phoneNumber = phoneNumber;
                this.avatar = avatar;
                this.dob = dob;
        }
        public static User fromDto(UserDTO userDTO) {
                User user = new User();
                user.setId(userDTO.getId());
                user.setFullName(userDTO.getFullName());
                user.setEmail(userDTO.getEmail());
                user.setPhoneNumber(userDTO.getPhone());
                return user;
        }
}
