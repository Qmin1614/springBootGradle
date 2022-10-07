package com.example.study.web.dao;

import com.example.study.web.model.group.Group;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-07
 * Time: 오후 1:39
 * Comments:
 */
@Mapper
public interface GroupMapper {

    /**
     * 그룹 목록 조회
     */
    List<Group> selectGroupAll();

    /**
     * 그룹 추가
     */
    int insertGroup(Group group);
}
