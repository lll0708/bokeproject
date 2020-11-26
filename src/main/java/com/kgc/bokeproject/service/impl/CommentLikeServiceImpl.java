package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.CommentLikeMapper;
import com.kgc.bokeproject.pojo.CommentLike;
import com.kgc.bokeproject.pojo.CommentLikeExample;
import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.service.CommentLikeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 李龙龙
 * 评论点赞表的service实现类
 */
@Service
@Transactional
public class CommentLikeServiceImpl implements CommentLikeService{
    @Resource
    CommentLikeMapper commentLikeMapper;

    //查看评论点赞的数
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public int getCommentLikeByComid(Integer comId) {
        CommentLikeExample example = new CommentLikeExample();
        example.createCriteria().andComIdEqualTo(comId);
        int i = commentLikeMapper.countByExample(example);
        return i;
    }

    //查看该评论点赞的人
    @Override
    public List<CommentLike> selectCommentLikeUser(Integer comId) {
        CommentLikeExample example = new CommentLikeExample();
        example.createCriteria().andComIdEqualTo(comId);
        List<CommentLike> commentLikes = commentLikeMapper.selectByExample(example);
        if (commentLikes!=null && commentLikes.size()>0){
            return commentLikes;
        }
        return null;
    }

    //点赞前查看该用户是否对此评论进行过点赞
    @Override
    public boolean getByUserIdAndComId(Integer userId, Integer comId) {
        CommentLikeExample example = new CommentLikeExample();
        example.createCriteria().andComIdEqualTo(comId);
        List<CommentLike> commentLikes = commentLikeMapper.selectByExample(example);
        for (CommentLike commentLike : commentLikes) {
            if (commentLike.getUserId() == comId){
                return true;
            }
        }
        return false;
    }

    //点赞(用户第一次对此评论点赞)
    @Override
    public boolean addCommentLike(CommentLike commentLike) {
        int i = commentLikeMapper.insertSelective(commentLike);
        return i>0?true:false;
    }

    //取消点赞(0)/重新点赞(1)
    @Override
    public boolean updateCommentLike(CommentLike commentLike) {
        int i = commentLikeMapper.updateByPrimaryKeySelective(commentLike);
        return i>0?true:false;
    }
}
