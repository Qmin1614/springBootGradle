package com.example.study.web.service.impl;

import com.example.study.web.dao.DomainMapper;
import com.example.study.web.model.domain.Domain;
import com.example.study.web.service.DomainService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-07
 * Time: 오전 11:15
 * Comments:
 */
@Service
public class BaseDomainService implements DomainService {

    DomainMapper domainMapper;

    public BaseDomainService(DomainMapper domainMapper) {
        this.domainMapper = domainMapper;
    }

    @Override
    public List<Domain> getDomainAll() {
        return this.domainMapper.selectDomainAll();
    }
}
