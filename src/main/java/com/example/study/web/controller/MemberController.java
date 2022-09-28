package com.example.study.web.controller;

import com.example.study.web.model.member.Member;
import com.example.study.web.model.member.dto.*;
import com.example.study.web.service.MemberService;
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
public class MemberController {

    private final MemberService memberService;

    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }

    @GetMapping(value = {"/member/list"})
    public String list(Model model) {
        List<Member> memberList = this.memberService.getMemberAll();
        model.addAttribute("getReadMemberResponse", new GetReadMemberResponse(memberList));
        model.addAttribute("main", "member/list");
        return "view";
    }

    @GetMapping(value = {"/member/join"})
    public String join(Model model) {
        model.addAttribute("main", "member/join");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"/member/add"})
    public PostCreateMemberResponse postCreateMember(@RequestBody PostCreateMember postCreateMember) {
        try {
            this.memberService.addMember(postCreateMember.toEntity());
            return new PostCreateMemberResponse("success", "회원가입에 성공했습니다.");
        } catch (Exception e) {
            return new PostCreateMemberResponse("fail", e.getMessage());
        }
    }

    @GetMapping(value = {"/member/update"})
    public String update(Model model, @ModelAttribute GetUpdateMember getUpdateMember) {
        Member member = this.memberService.getMemberById(getUpdateMember.getId());
        model.addAttribute("getUpdateMemberResponse", new GetUpdateMemberResponse(member));
        model.addAttribute("main", "member/update");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"/member/update"})
    public PostUpdateMemberResponse postUpdateMember(@RequestBody PostUpdateMember postUpdateMember) {
        try {
            this.memberService.updateMember(postUpdateMember.toEntity());
            return new PostUpdateMemberResponse("success", "회원수정에 성공했습니다.");
        } catch (Exception e) {
            return new PostUpdateMemberResponse("fail", e.getMessage());
        }
    }

    @ResponseBody
    @PostMapping(value = {"/member/delete"})
    public PostDeleteMemberResponse postDeleteMember(@RequestBody PostDeleteMember postDeleteMember) {
        try {
            this.memberService.deleteMember(postDeleteMember.toEntity().getId());
            return new PostDeleteMemberResponse("success", "회원정보가 삭제 되었습니다.");
        } catch (Exception e) {
            return new PostDeleteMemberResponse("fail", e.getMessage());
        }
    }
}
