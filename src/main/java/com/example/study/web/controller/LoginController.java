package com.example.study.web.controller;

import com.example.study.web.model.user.User;
import com.example.study.web.model.user.dto.PostLoginUser;
import com.example.study.web.model.user.dto.PostLoginUserResponse;
import com.example.study.web.service.UserService;
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

    private final UserService userService;

    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = {"/login"})
    public String login(Model model) {
        model.addAttribute("main", "login/login");
        return "view";
    }

    @ResponseBody
    @PostMapping("/login")
    public PostLoginUserResponse postLoginUser(@RequestBody PostLoginUser postLoginUser, HttpSession session) {
        try {
            User user = this.userService.login(postLoginUser.toEntity().getLoginId(), postLoginUser.toEntity().getPassword());
            if (user != null) {
                session.setAttribute("user", user);
                return new PostLoginUserResponse("success", "로그인이 완료되었습니다.");
            } else {
                return new PostLoginUserResponse("fail", "아이디 또는 비밀번호가 올바르지 않습니다.");
            }
        } catch (Exception e) {
            return new PostLoginUserResponse("fail", e.getMessage());
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}
