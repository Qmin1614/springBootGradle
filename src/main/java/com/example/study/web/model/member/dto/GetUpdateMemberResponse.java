package com.example.study.web.model.member.dto;

import com.example.study.web.model.member.Member;
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
public class GetUpdateMemberResponse {

    private Member member;

    public GetUpdateMemberResponse(Member member) {
        this.member = member;
    }
}
