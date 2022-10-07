package com.example.study.web.dao;

import com.example.study.web.model.domain.Domain;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-07
 * Time: 오전 11:16
 * Comments:
 */
@Mapper
public interface DomainMapper {

    /**
     * @see <p>도메인 목록 출력</p>
     */
    List<Domain> selectDomainAll();

    /**
     * @see <p>도메인 추가</p>
     */
    int insertDomain(Domain domain);
}
