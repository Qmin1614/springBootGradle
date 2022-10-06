package com.example.study.web.model.user.dto;

import com.example.study.web.model.user.User;
import lombok.Getter;
import lombok.Setter;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:41
 * Comments:
 */
@Getter
@Setter
public class PostUpdateUser {

    private String userId;
    private String loginId;
    private String name;
    private String password;

    public User toEntity() {
        User user = new User();
        user.setUserId(this.userId);
        user.setLoginId(this.loginId);
        user.setName(this.name);
        user.setPassword(this.password);
        return user;
    }
}
