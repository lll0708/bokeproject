package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.Users;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 17:00
 */
public interface UsersService {
    //登录验证
    List<Users> listCheckLogin(String phone,String password);
}
