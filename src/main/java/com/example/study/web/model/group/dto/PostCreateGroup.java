package com.example.study.web.model.group.dto;

import com.example.study.web.model.group.Group;
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
public class PostCreateGroup {

    private String domainId;
    private String name;
    private String description;

    public Group toEntity() {
        Group group = new Group();
        group.setDomainId(this.domainId);
        group.setName(this.name);
        group.setDescription(this.description);
        return group;
    }
}
