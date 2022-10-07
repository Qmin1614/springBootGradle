package com.example.study.web.service.impl;

import com.example.study.web.dao.GroupMapper;
import com.example.study.web.model.group.Group;
import com.example.study.web.service.GroupService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-07
 * Time: 오후 1:38
 * Comments:
 */
@Service
public class BaseGroupService implements GroupService {

    GroupMapper groupMapper;

    public BaseGroupService(GroupMapper groupMapper) {
        this.groupMapper = groupMapper;
    }

    @Override
    public List<Group> getGroupAll() {
        return this.groupMapper.selectGroupAll();
    }

    @Override
    public int addGroup(Group group) {
        return this.groupMapper.insertGroup(group);
    }
}
