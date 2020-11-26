package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.EssayLikeMapper;
import com.kgc.bokeproject.mapper.EssayMapper;
import com.kgc.bokeproject.mapper.FansMapper;
import com.kgc.bokeproject.mapper.UsersMapper;
import com.kgc.bokeproject.pojo.*;
import com.kgc.bokeproject.service.LoginService;
import org.junit.Test;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
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
    @Resource
    EssayLikeMapper essayLikeMapper;
    @Resource
    EssayMapper essayMapper;
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

    @Override
    public List<Essay> selectEssayByUserLike(Integer userId) {
        EssayExample essayExample = new EssayExample();
        EssayExample.Criteria criteria = essayExample.createCriteria();
        criteria.andUserIdEqualTo(userId);
        //新建一个list集合存放所有文章类型的id
        List<Integer> essayType = new ArrayList<>();
        //查出用户喜欢的所有文章
        List<Essay> essays = essayMapper.selectByExample(essayExample);
        if (essays != null && essays.size() > 0){
            for (Essay essay : essays) {
                essayType.add(essay.getTypeId());
            }
            // 利用list中的元素创建HashSet集合，此时set中进行了去重操作
            HashSet set = new HashSet(essayType);
            // 清空list集合
            essayType.clear();
            // 将去重后的元素重新添加到list中
            essayType.addAll(set);

            List<Essay> allEssayList = new ArrayList<>();
            for (Integer integer : essayType) {
                System.out.println("类型为"+integer);
                EssayExample example = new EssayExample();
                example.createCriteria().andTypeIdEqualTo(integer);
                List<Essay> essays1 = essayMapper.selectByExample(example);
                allEssayList.addAll(essays1);
            }
            allEssayList.sort(new Comparator<Essay>() {
                @Override
                public int compare(Essay o1, Essay o2) {
                    if (o1.getLikeCount()>o2.getLikeCount()){
                        return 1;
                    }
                    if (o1.getLikeCount()==o2.getLikeCount()){
                        return 0;
                    }
                    return -1;
                }
            });
            return allEssayList;
        }
        //如果用户喜欢的文章为空，默认查所有文章
        else {
            EssayExample essayExample1 = new EssayExample();
            EssayExample.Criteria criteria1 = essayExample1.createCriteria();
            criteria1.andTitleLike("");
            List<Essay> essays1 = essayMapper.selectByExample(essayExample1);
            essays1.sort(new Comparator<Essay>() {
                @Override
                public int compare(Essay o1, Essay o2) {
                    if (o1.getLikeCount()<o2.getLikeCount()){
                        return 1;
                    }
                    if (o1.getLikeCount()==o2.getLikeCount()){
                        return 0;
                    }
                    return -1;
                }
            });
            return essays1;
        }
    }


}
