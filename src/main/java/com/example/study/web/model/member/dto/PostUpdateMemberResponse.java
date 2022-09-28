package com.example.study.web.model.member.dto;

import lombok.Getter;
import lombok.Setter;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오후 1:53
 * Comments:
 */
@Getter
@Setter
public class PostUpdateMemberResponse {

    private String status;
    private String message;

    public PostUpdateMemberResponse(String status, String message) {
        this.status = status;
        this.message = message;
    }
}
