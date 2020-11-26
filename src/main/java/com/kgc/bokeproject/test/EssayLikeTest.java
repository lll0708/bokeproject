package com.kgc.bokeproject.test;

import com.kgc.bokeproject.pojo.EssayLike;
import com.kgc.bokeproject.service.EssayLikeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class EssayLikeTest {
    @Resource
    EssayLikeService likeService;

    @Test
    public void test01(){
        List<EssayLike> likes = likeService.selectLikeEssayUserByEssayId(1);
        for (EssayLike like : likes) {
            System.out.println(like.getUserId());
            System.out.println(like.getUser().getNickName());
        }
    }

    @Test
    public void test02(){
        boolean byUserId = likeService.getByUserId(2, 4);
        System.out.println(byUserId);
    }
}
