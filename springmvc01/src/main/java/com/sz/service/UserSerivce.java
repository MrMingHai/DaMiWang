package com.sz.service;

import com.sz.pojo.User;

public interface UserSerivce {
    /**
     * 根据user信息去检查数据库是否存在该用户
     * @param user
     * @return
     */
    User get(User user);

    boolean delete(String username);
}
