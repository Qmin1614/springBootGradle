package com.example.study.web.dao;

import com.example.study.web.model.user.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:52
 * Comments:
 */
@Mapper
public interface UserMapper {

    /**
     * @see <p>회원 목록 출력</p>
     */
    List<User> selectUserAll();

    /**
     * @see <p>ID에 해당하는 회원 정보출력</p>
     */
    User selectUserById(String userId);

    /**
     * @see <p>ID와 password에 해당하는 회원 정보출력</p>
     */
    User selectUserByLoginIdAndPassword(@Param("loginId") String loginId, @Param("password") String password);

    /**
     * @see <p>회원가입</p>
     * @param user
     * @return
     */
    int insertUser(User user);

    /**
     * @see <p>ID에 해당하는 회원 정보수정</p>
     */
    int updateUser(User user);

    /**
     * @see <p>ID에 해당하는 회원 정보삭제</p>
     */
    int deleteUser(String userId);

}
