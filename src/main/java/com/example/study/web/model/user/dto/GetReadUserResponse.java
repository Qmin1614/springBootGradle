package com.example.study.web.model.user.dto;

import com.example.study.web.model.user.User;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오후 4:35
 * Comments:
 */
@Getter
@Setter
public class GetReadUserResponse {

    private List<User> userList;

    public GetReadUserResponse(List<User> userList) {
        this.userList = userList;
    }
}
