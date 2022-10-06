package com.example.study.web.service.impl;

import com.example.study.web.dao.UserMapper;
import com.example.study.web.model.user.User;
import com.example.study.web.service.UserService;
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
public class BaseUserService implements UserService {

    private final UserMapper userMapper;

    public BaseUserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public List<User> getUserAll() {
        return this.userMapper.selectUserAll();
    }

    @Override
    public User getUserById(String userId) {
        return this.userMapper.selectUserById(userId);
    }

    @Override
    public int addUser(User user) {
        return this.userMapper.insertUser(user);
    }

    @Override
    public int updateUser(User user) {
        return this.userMapper.updateUser(user);
    }

    @Override
    public int deleteUser(String userId) {
        return this.userMapper.deleteUser(userId);
    }

    @Override
    public User login(String loginId, String password) {
        return this.userMapper.selectUserByLoginIdAndPassword(loginId, password);
    }

}
