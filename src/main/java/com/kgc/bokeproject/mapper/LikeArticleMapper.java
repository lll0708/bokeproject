package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.LikeArticle;
import com.kgc.bokeproject.pojo.LikeArticleExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LikeArticleMapper {
    int countByExample(LikeArticleExample example);

    int deleteByExample(LikeArticleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(LikeArticle record);

    int insertSelective(LikeArticle record);

    List<LikeArticle> selectByExample(LikeArticleExample example);

    LikeArticle selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") LikeArticle record, @Param("example") LikeArticleExample example);

    int updateByExample(@Param("record") LikeArticle record, @Param("example") LikeArticleExample example);

    int updateByPrimaryKeySelective(LikeArticle record);

    int updateByPrimaryKey(LikeArticle record);
}