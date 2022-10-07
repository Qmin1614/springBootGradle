package com.example.study.web.service;

import com.example.study.web.model.domain.Domain;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-07
 * Time: 오전 11:15
 * Comments:
 */
public interface DomainService {

    /**
     * @see <p>도메인 목록 출력</p>
     */
    List<Domain> getDomainAll();

    /**
     * @see <p>도메인 추가</p>
     */
    int addDomain(Domain domain);
}
