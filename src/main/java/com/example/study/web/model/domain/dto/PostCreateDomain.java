package com.example.study.web.model.domain.dto;

import com.example.study.web.model.domain.Domain;
import lombok.Getter;
import lombok.Setter;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:41
 * Comments:
 */
@Getter
@Setter
public class PostCreateDomain {

    private String name;
    private String description;

    public Domain toEntity() {
        Domain domain = new Domain();
        domain.setName(this.name);
        domain.setDescription(this.description);
        return domain;
    }
}
