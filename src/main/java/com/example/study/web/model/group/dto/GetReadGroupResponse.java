package com.example.study.web.model.group.dto;

import com.example.study.web.model.domain.Domain;
import com.example.study.web.model.group.Group;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오후 4:35
 * Comments:
 */
@Getter
@Setter
public class GetReadGroupResponse {

    private List<Group> groupList;
    private List<Domain> domainList;

    public GetReadGroupResponse(List<Group> groupList, List<Domain> domainList) {
        this.groupList = groupList;
        this.domainList = domainList;
    }
}
