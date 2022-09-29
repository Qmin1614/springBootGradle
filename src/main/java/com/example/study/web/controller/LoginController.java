package com.example.study.web.controller;

import com.example.study.web.model.member.Member;
import com.example.study.web.model.member.dto.PostLoginMember;
import com.example.study.web.model.member.dto.PostLoginMemberResponse;
import com.example.study.web.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-29
 * Time: 오후 2:43
 * Comments:
 */
@Controller
public class LoginController {

    private final MemberService memberService;

    public LoginController(MemberService memberService) {
        this.memberService = memberService;
    }

    @GetMapping(value = {"/login"})
    public String login(Model model) {
        model.addAttribute("main", "login/login");
        return "view";
    }

    @ResponseBody
    @PostMapping("/login")
    public PostLoginMemberResponse postLoginMember(@RequestBody PostLoginMember postLoginMember, HttpSession session) {
        try {
            Member member = this.memberService.login(postLoginMember.toEntity().getLoginId(), postLoginMember.toEntity().getPassword());
            if (member != null) {
                session.setAttribute("member", member);
                return new PostLoginMemberResponse("success", "로그인이 완료되었습니다.");
            } else {
                return new PostLoginMemberResponse("success", "아이디 또는 비밀번호가 올바르지 않습니다.");
            }
        } catch (Exception e) {
            return new PostLoginMemberResponse("fail", e.getMessage());
        }
    }
}
