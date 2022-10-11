package com.example.study.web.controller;

import com.example.study.web.model.group.Group;
import com.example.study.web.model.user.User;
import com.example.study.web.model.user.dto.*;
import com.example.study.web.service.GroupService;
import com.example.study.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:15
 * Comments:
 */
@Controller
public class UserController {

    private final UserService userService;
    private final GroupService groupService;

    public UserController(UserService userService, GroupService groupService) {
        this.userService = userService;
        this.groupService = groupService;
    }

    @GetMapping(value = {"/user/list"})
    public String list(Model model) {
        List<User> userList = this.userService.getUserAll();
        List<Group> groupList = this.groupService.getGroupAll();
        model.addAttribute("getReadUserResponse", new GetReadUserResponse(userList, groupList));
        model.addAttribute("main", "user/list");
        return "view";
    }

    @GetMapping(value = {"/user/join"})
    public String join(Model model) {
        List<Group> groupList = this.groupService.getGroupAll();
        model.addAttribute("getCreateUserResponse", new GetCreateUserResponse(groupList));
        model.addAttribute("main", "user/join");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"/user/add"})
    public PostCreateUserResponse postCreateUser(@RequestBody PostCreateUser postCreateUser) {
        try {
            this.userService.addUser(postCreateUser.toEntity());
            return new PostCreateUserResponse("success", "회원가입에 성공했습니다.");
        } catch (Exception e) {
            return new PostCreateUserResponse("fail", e.getMessage());
        }
    }

    @GetMapping(value = {"/user/update"})
    public String update(Model model, @ModelAttribute GetUpdateUser getUpdateUser) {

        User user = this.userService.getUserById(getUpdateUser.getUserId());
        List<Group> groupList = this.groupService.getGroupAll();
        model.addAttribute("getCreateUserResponse", new GetCreateUserResponse(groupList));
        model.addAttribute("getUpdateUserResponse", new GetUpdateUserResponse(user));
        model.addAttribute("main", "user/update");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"/user/update"})
    public PostUpdateUserResponse postUpdateUser(@RequestBody PostUpdateUser postUpdateUser) {
        try {
            this.userService.updateUser(postUpdateUser.toEntity());
            return new PostUpdateUserResponse("success", "회원수정에 성공했습니다.");
        } catch (Exception e) {
            return new PostUpdateUserResponse("fail", e.getMessage());
        }
    }

    @ResponseBody
    @PostMapping(value = {"/user/delete"})
    public PostDeleteUserResponse postDeleteUser(@RequestBody PostDeleteUser postDeleteUser) {
        try {
            this.userService.deleteUser(postDeleteUser.toEntity().getUserId());
            return new PostDeleteUserResponse("success", "회원정보가 삭제 되었습니다.");
        } catch (Exception e) {
            return new PostDeleteUserResponse("fail", e.getMessage());
        }
    }
}
