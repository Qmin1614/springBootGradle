package com.example.study.web.model.user.dto;

import com.example.study.web.model.user.User;
import lombok.Getter;
import lombok.Setter;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오후 5:54
 * Comments:
 */
@Getter
@Setter
public class GetUpdateUserResponse {

    private User user;

    public GetUpdateUserResponse(User user) {
        this.user = user;
    }
}
