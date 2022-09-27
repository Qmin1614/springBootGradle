package com.example.study.web.model.member.dto;

import com.example.study.web.model.member.Member;
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
public class GetReadMemberResponse {

    private List<Member> memberList;

    public GetReadMemberResponse(List<Member> memberList) {
        this.memberList = memberList;
    }
}
