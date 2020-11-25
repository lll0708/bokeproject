package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.CommentLike;
import com.kgc.bokeproject.pojo.CommentLikeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentLikeMapper {
    int countByExample(CommentLikeExample example);

    int deleteByExample(CommentLikeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CommentLike record);

    int insertSelective(CommentLike record);

    List<CommentLike> selectByExample(CommentLikeExample example);

    CommentLike selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CommentLike record, @Param("example") CommentLikeExample example);

    int updateByExample(@Param("record") CommentLike record, @Param("example") CommentLikeExample example);

    int updateByPrimaryKeySelective(CommentLike record);

    int updateByPrimaryKey(CommentLike record);
}