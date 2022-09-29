package com.example.study.web.service.impl;

import com.example.study.web.dao.MemberMapper;
import com.example.study.web.model.member.Member;
import com.example.study.web.service.MemberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:49
 * Comments:
 */
@Slf4j
@Service
public class BaseMemberService implements MemberService {

    private final MemberMapper memberMapper;

    public BaseMemberService(MemberMapper memberMapper) {
        this.memberMapper = memberMapper;
    }

    @Override
    public List<Member> getMemberAll() {
        return this.memberMapper.selectMemberAll();
    }

    @Override
    public Member getMemberById(String id) {
        return this.memberMapper.selectMemberById(id);
    }

    @Override
    public int addMember(Member member) {
        return this.memberMapper.insertMember(member);
    }

    @Override
    public int updateMember(Member member) {
        return this.memberMapper.updateMember(member);
    }

    @Override
    public int deleteMember(String id) {
        return this.memberMapper.deleteMember(id);
    }

    @Override
    public Member login(String loginId, String password) {
        return this.memberMapper.selectMemberByLoginIdAndPassword(loginId, password);
    }

}
