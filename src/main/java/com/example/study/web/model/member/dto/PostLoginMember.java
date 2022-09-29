package com.example.study.web.model.member.dto;

import com.example.study.web.model.member.Member;
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
public class PostLoginMember {

    private String loginId;
    private String password;

    public Member toEntity() {
        Member member = new Member();
        member.setLoginId(this.loginId);
        member.setPassword(this.password);
        return member;
    }
}
