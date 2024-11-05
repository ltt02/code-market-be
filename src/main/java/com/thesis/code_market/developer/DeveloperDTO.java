
package com.thesis.code_market.developer;

import com.thesis.code_market.major.MajorDTO;
import com.thesis.code_market.skill.SkillDTO;
import com.thesis.code_market.user.UserDTO;
import lombok.*;

import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class DeveloperDTO extends UserDTO {
    private String studentId;
    private MajorDTO major;
    private List<SkillDTO> skills;
    private String githubProfile;

    public DeveloperDTO(Developer developer) {
        super(developer);
        this.studentId = developer.getStudentId();
        this.major = new MajorDTO(developer.getMajor());
        this.skills = developer.getSkills().stream().map(SkillDTO::new).collect(Collectors.toList());
        this.githubProfile = developer.getGithubProfile();
    }
}
