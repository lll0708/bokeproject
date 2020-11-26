package com.kgc.bokeproject.controller;

import com.kgc.bokeproject.pojo.Comment;
import com.kgc.bokeproject.pojo.Essay;
import com.kgc.bokeproject.pojo.EssayLike;
import com.kgc.bokeproject.service.CollectService;
import com.kgc.bokeproject.service.CommentService;
import com.kgc.bokeproject.service.EssayLikeService;
import com.kgc.bokeproject.service.EssayService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 李龙龙
 * 作品的controller
 */
@Controller
public class EssayController {
    @Resource
    EssayService essayService;
    @Resource
    EssayLikeService essayLikeService;
    @Resource
    CommentService commentService;
    @Resource
    CollectService collectService;
    @RequestMapping("showEssay.do")
    public String showEssayById(Model model,Integer essayId){
        Essay essay = essayService.getById(essayId);
        //将作品传递到页面上(里面有点赞数)
        model.addAttribute("essay",essay);
        //查询所有评论以及评论数
        int countByEssayId = commentService.getCountByEssayId(essayId);
        model.addAttribute("countEssayComment",countByEssayId);
        List<Comment> comments = commentService.selectCommentByEssayId(essayId);
        model.addAttribute("comment",comments);
        //查看收藏数
        int countEssayByEssayId = collectService.getCountEssayByEssayId(essayId);
        model.addAttribute("countEssayCollect",countByEssayId);
        return "essay";
    }
}
