package com.example.study.web.model.member.dto;

import com.example.study.web.model.member.Member;
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
public class PostUpdateMember {

    private String id;
    private String loginId;
    private String name;
    private String password;

    public Member toEntity() {
        Member member = new Member();
        member.setId(this.id);
        member.setLoginId(this.loginId);
        member.setName(this.name);
        member.setPassword(this.password);
        return member;
    }
}
