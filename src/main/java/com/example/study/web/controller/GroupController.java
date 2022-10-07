package com.example.study.web.controller;

import com.example.study.web.model.domain.Domain;
import com.example.study.web.model.domain.dto.GetReadDomainResponse;
import com.example.study.web.model.group.Group;
import com.example.study.web.model.group.dto.GetReadGroupResponse;
import com.example.study.web.model.group.dto.PostCreateGroup;
import com.example.study.web.model.group.dto.PostCreateGroupResponse;
import com.example.study.web.service.DomainService;
import com.example.study.web.service.GroupService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-06
 * Time: 오후 5:24
 * Comments:
 */
@Controller
public class GroupController {

    GroupService groupService;
    DomainService domainService;

    public GroupController(GroupService groupService, DomainService domainService) {
        this.groupService = groupService;
        this.domainService = domainService;
    }

    @GetMapping(value = {"/group/list"})
    public String list(Model model) {
        List<Group> groupList = this.groupService.getGroupAll();
        List<Domain> domainList = this.domainService.getDomainAll();
        model.addAttribute("getReadGroupResponse", new GetReadGroupResponse(groupList, domainList));
        model.addAttribute("main", "group/list");
        return "view";
    }

    @GetMapping(value = {"/group/add"})
    public String add(Model model) {
        List<Domain> domainList = this.domainService.getDomainAll();
        model.addAttribute("getReadDomainResponse", new GetReadDomainResponse(domainList));
        model.addAttribute("main", "group/add");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"/group/add"})
    public PostCreateGroupResponse postCreateGroup(@RequestBody PostCreateGroup postCreateGroup) {
        try {
            this.groupService.addGroup(postCreateGroup.toEntity());
            return new PostCreateGroupResponse("success", "그룹을 생성하였습니다");
        } catch (Exception e) {
            return new PostCreateGroupResponse("fail", e.getMessage());
        }
    }
}
