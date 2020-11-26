package com.kgc.bokeproject.test;

import com.kgc.bokeproject.pojo.Collect;
import com.kgc.bokeproject.service.CollectService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class CollectTest {
    @Resource
    CollectService collectService;
    @Test
    public void test01(){
        boolean userEssayCollect = collectService.getUserEssayCollect(1, 1);
        System.out.println(userEssayCollect);
    }

    @Test
    public void test02(){
        List<Collect> collects = collectService.selectCollectByEssayId(1);
        for (Collect collect : collects) {
            System.out.println(collect.getEssayId());
            System.out.println(collect.getUser().getNickName());
        }
    }
}
