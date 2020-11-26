package com.kgc.bokeproject.test;

import com.kgc.bokeproject.pojo.Comment;
import com.kgc.bokeproject.service.CommentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class CommentTest {

    @Resource
    CommentService commentService;

    @Test
    public void test01(){
        List<Comment> comments = commentService.selectCommentByEssayId(1);
        for (Comment comment : comments) {
            System.out.println(comment.getContents());
        }
    }
}
