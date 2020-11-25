package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.FansMapper;
import com.kgc.bokeproject.mapper.UsersMapper;
import com.kgc.bokeproject.pojo.Fans;
import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.pojo.UsersExample;
import com.kgc.bokeproject.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName: loginServiceImpl <br/>
 * Description: <br/>
 * date: 2020/11/25 20:00<br/>
 *
 * @author 12161<br />
 * @since JDK 1.8
 */
@Service
public class loginServiceImpl implements LoginService {
    @Resource
    UsersMapper usersMapper;
    @Resource
    FansMapper fansMapper;
    @Override
    public Users loginTest(String nickName, String password) {
        UsersExample example = new UsersExample();
        UsersExample.Criteria criteria = example.createCriteria();
        if (nickName!=null && password !=null){
            criteria.andNickNameEqualTo("坤");
            criteria.andPasswordEqualTo("123");
        }
        List<Users> users = usersMapper.selectByExample(example);
        if (users.size() > 0 ){
            Users users1 = users.get(0);
            return users1;
        }
        return null;
    }

    @Override
    public int getUserFans(int userId) {
        List<Fans> fans = fansMapper.selectFansByUserId(userId);
        if (fans.size() > 0){
            return fans.size();
        }
        return 0;
    }

    @Override
    public int getUserFocusOn(int fans) {
        List<Fans> fans1 = fansMapper.selectFocusOnByFans(fans);
        if (fans1.size() > 0){
            return fans1.size();
        }
        return 0;
    }
}
