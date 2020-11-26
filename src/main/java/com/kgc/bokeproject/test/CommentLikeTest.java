package com.kgc.bokeproject.test;

import com.kgc.bokeproject.pojo.CommentLike;
import com.kgc.bokeproject.service.CommentLikeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import javax.sound.midi.Soundbank;
import java.util.List;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class CommentLikeTest {

    @Resource
    CommentLikeService commentLikeService;
    @Test
    public void test01(){
        boolean byUserIdAndComId = commentLikeService.getByUserIdAndComId(1, 1);
        System.out.println(byUserIdAndComId);
    }

    @Test
    public void test02(){
        int commentLikeByComid = commentLikeService.getCommentLikeByComid(1);
        System.out.println(commentLikeByComid);
    }

    @Test
    public void test03(){
        List<CommentLike> commentLikes = commentLikeService.selectCommentLikeUser(1);
        for (CommentLike commentLike : commentLikes) {
            System.out.println(commentLike.getUserId());
            System.out.println(commentLike.getUser().getNickName());
        }
    }

}
