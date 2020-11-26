package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.EssayLike;
import com.kgc.bokeproject.pojo.EssayLikeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EssayLikeMapper {
    int countByExample(EssayLikeExample example);

    int deleteByExample(EssayLikeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(EssayLike record);

    int insertSelective(EssayLike record);

    List<EssayLike> selectByExample(EssayLikeExample example);

    EssayLike selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") EssayLike record, @Param("example") EssayLikeExample example);

    int updateByExample(@Param("record") EssayLike record, @Param("example") EssayLikeExample example);

    int updateByPrimaryKeySelective(EssayLike record);

    int updateByPrimaryKey(EssayLike record);
}