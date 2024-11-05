package com.thesis.code_market.skill;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class SkillDTO {
    private String name;

    public SkillDTO(Skill skill) {
        this.name = skill.getName();
    }
}
