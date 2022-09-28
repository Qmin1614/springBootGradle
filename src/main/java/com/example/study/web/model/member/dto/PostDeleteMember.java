package com.example.study.web.model.member.dto;

import com.example.study.web.model.member.Member;
import lombok.Getter;
import lombok.Setter;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오후 5:52
 * Comments:
 */
@Getter
@Setter
public class PostDeleteMember {

    private String id;

    public Member toEntity() {
        Member member = new Member();
        member.setId(id);
        return member;
    }
}
