package com.example.study.web.service;

import com.example.study.web.model.group.Group;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-07
 * Time: 오후 1:37
 * Comments:
 */
public interface GroupService {

    /**
     * 그룹 목록 조회
     */
    List<Group> getGroupAll();

    /**
     * 그룹 추가
     */
    int addGroup(Group group);
}
