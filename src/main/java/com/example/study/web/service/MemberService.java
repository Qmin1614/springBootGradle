package com.example.study.web.service;

import com.example.study.web.model.member.Member;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:35
 * Comments:
 */
public interface MemberService {

    /**
     * @see <p>회원 목록 출력</p>
     */
    List<Member> getMemberAll();

    /**
     * @see <p>ID에 해당하는 회원 정보출력</p>
     */
    Member getMemberById(String id);

    /**
     * @see <p>회원 가입</p>
     */
    int addMember(Member member);

    /**
     * @see <p>ID에 해당하는 회원 정보수정</p>
     */
    int updateMember(Member member);

    /**
     * @see <p>ID에 해당하는 회원 정보삭제</p>
     */
    int deleteMember(String id);

    /**
     * @see <p>Id와 Password로 해당 맴버가 있는지 조회</p>
     */
    Member login(String loginId, String password);
}
