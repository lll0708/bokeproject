package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.Users;

import java.util.List;

/**
 * ClassName: login <br/>
 * Description: <br/>
 * date: 2020/11/25 19:56<br/>
 *
 * @author 12161<br />
 * @since JDK 1.8
 */
public interface LoginService {
    //测试获得用户
    public Users loginTest(String nickName, String password);
    //获取用户的粉丝数
    public int getUserFans(int userId);
    //获取用户的关注数
    public int getUserFocusOn(int fans);
}
