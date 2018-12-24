package com.sz.service.impl;

import com.sz.mapper.UserMapper;
import com.sz.pojo.User;
import com.sz.service.UserSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserSerivce {

    // 注入mapper
    @Autowired
    private UserMapper userMapper;


    @Override
    public User get(User user) {
        // 提前检查
        return  userMapper.select(user);
    }

    @Override
    public boolean delete(String username) {
        int row = userMapper.delete(username);
        return row == 1 ? true:false;
    }




}
