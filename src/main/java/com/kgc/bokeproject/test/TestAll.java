package com.kgc.bokeproject.test;

import com.kgc.bokeproject.pojo.Essay;
import com.kgc.bokeproject.service.LoginService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName: TestAll <br/>
 * Description: <br/>
 * date: 2020/11/26 19:50<br/>
 *
 * @author 12161<br />
 * @since JDK 1.8
 */
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestAll {
    @Resource
    LoginService loginService;
    @Test
    public void test01(){
        List<Essay> essays = loginService.selectEssayByUserLike(1);
        System.out.println("文章数量为："+essays.size());
        for (Essay essay : essays) {
            System.out.println(essay.getTitle());
        }
    }
}
