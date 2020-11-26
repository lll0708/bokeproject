package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.UsersMapper;
import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.pojo.UsersExample;
import com.kgc.bokeproject.service.UsersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 17:03
 */

@Service
public class UsersServiceImpl implements UsersService {
    @Resource
    UsersMapper usersMapper;
    /**
     * 登录验证
     * @param phone 手机号
     * @param password 密码
     * @return Users集合
     */
    @Override
    public List<Users> listCheckLogin(String phone,String password) {
        UsersExample usersExample=new UsersExample();
        UsersExample.Criteria criteria=usersExample.createCriteria();
        criteria.andPhoneEqualTo(phone);
        criteria.andPasswordEqualTo(password);
        List<Users> users = usersMapper.selectByExample(usersExample);
        return users;
    }
}
