package com.example.study.web.model.domain.dto;

import com.example.study.web.model.domain.Domain;
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
public class GetReadDomainResponse {

    private List<Domain> domainList;

    public GetReadDomainResponse(List<Domain> domainList) {
        this.domainList = domainList;
    }
}
