package com.sz.mapper;

import com.sz.pojo.User;

public interface UserMapper {


    User select(User user);

    int delete(String username);
}
