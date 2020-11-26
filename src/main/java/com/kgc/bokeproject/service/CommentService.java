package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.Comment;

import java.util.List;

/**
 * @author 李龙龙
 * 评论表的业务模型
 * 2020年11月25日19:29:34
 */
public interface CommentService {
    //查询作品下所有的评论
    public List<Comment> selectCommentByEssayId(Integer essayId);
    //发表评论
    public boolean addCommert(Comment comment);

    //查询改评论是否是自己的(如果是可以删除自己评论)

    //删除评论(修改评论的属性为0)
    public boolean updateCommentStatus(Integer id);
}
