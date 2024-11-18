package com.thesis.code_market.developer;

import com.thesis.code_market.application.Application;
import com.thesis.code_market.application_framework.ApplicationFramework;
import com.thesis.code_market.major.Major;
import com.thesis.code_market.role.Role;
import com.thesis.code_market.skill.Skill;
import com.thesis.code_market.user.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

@Component
@Entity
@DiscriminatorValue("DEVELOPER")
@EntityListeners(AuditingEntityListener.class)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Developer extends User {

    @Column(length = 8, unique = true)
    private String studentId;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.PERSIST})
    @JoinColumn(name="major_id")
    private Major major;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.PERSIST})
    @JoinTable(
            name = "developers_skills",
            joinColumns = @JoinColumn(name = "developer_id"),
            inverseJoinColumns = @JoinColumn(name = "skill_id"))
    private List<Skill> skills;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "developer")
    private List<Application> applicationList;

    @Column(columnDefinition = "TEXT")
    private String githubProfile;

    @Column(columnDefinition = "boolean default true")
    private Boolean isAvailable;

    public Developer(Long id, String userName, String fullName, String email, String password, String phoneNumber, String avatar, Date dob, Date createdAt, Date updatedAt, boolean locked, Boolean isAvailable, String githubProfile, String studentId) {
        super(id, userName, fullName, email, password, phoneNumber, avatar, dob, createdAt, updatedAt, locked);
        this.isAvailable = isAvailable;
        this.githubProfile = githubProfile;
        this.studentId = studentId;
    }

    public Developer(DeveloperDTO dto) {
        super(dto.getUserName(), dto.getFullName(),
                dto.getEmail(), dto.getPassword(), dto.getPhone(),
                dto.getAvatar(), dto.getDob());
        this.studentId = dto.getStudentId();
        this.major = new Major(dto.getMajor());
        this.githubProfile = dto.getGithubProfile();
        List<Skill> skillList = dto.getSkills().stream()
                .map(Skill::new) // Use the constructor
                .toList();
        this.skills = skillList;
    }

    @Override
    public String toString() {
        return "Developer{" +
                "githubProfile='" + githubProfile + '\'' +
                ", studentId='" + studentId + '\'' +
                ", isAvailable=" + isAvailable +
                '}';
    }
}
