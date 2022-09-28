package com.example.study.web.dao;

import com.example.study.web.model.member.Member;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:52
 * Comments:
 */
@Mapper
public interface MemberMapper {

    /**
     * @see <p>회원 목록 출력</p>
     */
    List<Member> selectMemberAll();

    /**
     * @see <p>ID에 해당하는 회원 정보출력</p>
     */
    Member selectMemberById(String id);

    /**
     * @see <p>회원가입</p>
     * @param member
     * @return
     */
    int insertMember(Member member);

    /**
     * @see <p>ID에 해당하는 회원 정보수정</p>
     */
    int updateMember(Member member);

    /**
     * @see <p>ID에 해당하는 회원 정보삭제</p>
     */
    int deleteMember(String id);

}
