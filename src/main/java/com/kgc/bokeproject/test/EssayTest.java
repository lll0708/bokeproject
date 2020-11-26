package com.kgc.bokeproject.test;

import com.kgc.bokeproject.pojo.Essay;
import com.kgc.bokeproject.service.EssayService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class EssayTest {
    @Resource
    EssayService essayService;

    @Test
    public void test(){
        Essay byId = essayService.getById(1);
        System.out.println(byId.getContents());
    }
}
