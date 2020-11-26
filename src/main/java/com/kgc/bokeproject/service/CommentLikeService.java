package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.CommentLike;
import com.kgc.bokeproject.pojo.Users;

import java.util.List;

/**
 * @author 李龙龙
 * 评论点赞表的service接口
 */
public interface CommentLikeService {
    //查看评论点赞的数
    public int getCommentLikeByComid(Integer comId);
    //查看该评论点赞的人
    public List<CommentLike> selectCommentLikeUser(Integer comId);
    //点赞前查看该用户是否对此评论进行过点赞
    public boolean getByUserIdAndComId(Integer userId,Integer comId);
    //点赞(用户第一次对此评论点赞)
    public boolean addCommentLike(CommentLike commentLike);
    //取消点赞(0)/重新点赞(1)
    public boolean updateCommentLike(CommentLike commentLike);
}
