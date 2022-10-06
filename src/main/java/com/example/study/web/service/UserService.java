package com.example.study.web.service;

import com.example.study.web.model.user.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:35
 * Comments:
 */
public interface UserService {

    /**
     * @see <p>회원 목록 출력</p>
     */
    List<User> getUserAll();

    /**
     * @see <p>ID에 해당하는 회원 정보출력</p>
     */
    User getUserById(String userId);

    /**
     * @see <p>회원 가입</p>
     */
    int addUser(User user);

    /**
     * @see <p>ID에 해당하는 회원 정보수정</p>
     */
    int updateUser(User user);

    /**
     * @see <p>ID에 해당하는 회원 정보삭제</p>
     */
    int deleteUser(String userId);

    /**
     * @see <p>Id와 Password로 해당 맴버가 있는지 조회</p>
     */
    User login(String loginId, String password);
}
