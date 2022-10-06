package com.example.study.web.model.user.dto;

import com.example.study.web.model.user.User;
import lombok.Getter;
import lombok.Setter;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-29
 * Time: 오후 3:28
 * Comments:
 */
@Getter
@Setter
public class PostLoginUser {

    private String loginId;
    private String password;

    public User toEntity() {
        User user = new User();
        user.setLoginId(this.loginId);
        user.setPassword(this.password);
        return user;
    }
}
