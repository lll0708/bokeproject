package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.CommentMapper;
import com.kgc.bokeproject.pojo.Comment;
import com.kgc.bokeproject.pojo.CommentExample;
import com.kgc.bokeproject.service.CommentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 李龙龙
 * 2020年11月25日22:46:13
 */
@Service
@Transactional
public class CommentServiceImpl implements CommentService {
    @Resource
    CommentMapper commentMapper;
    //查询作品下所有的评论
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Comment> selectCommentByEssayId(Integer essayId) {
        CommentExample example = new CommentExample();
        example.createCriteria().andEssayIdEqualTo(essayId);
        List<Comment> comments = commentMapper.selectByExample(example);
        if (comments!=null&&comments.size()>0){
            return comments;
        }
        return null;
    }

    //发表评论
    @Override
    public boolean addCommert(Comment comment) {
        int i = commentMapper.insertSelective(comment);
        return i>0?true:false;
    }

    //删除评论(修改评论的属性为0)
    @Override
    public boolean updateCommentStatus(Integer id) {
        Comment comment = commentMapper.selectByPrimaryKey(id);
        comment.setStatus(0);
        int i = commentMapper.updateByPrimaryKeySelective(comment);
        return i>0?true:false;
    }
}
