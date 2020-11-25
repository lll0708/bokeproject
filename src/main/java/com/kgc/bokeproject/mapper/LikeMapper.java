package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.Like;
import com.kgc.bokeproject.pojo.LikeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LikeMapper {
    int countByExample(LikeExample example);

    int deleteByExample(LikeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Like record);

    int insertSelective(Like record);

    List<Like> selectByExample(LikeExample example);

    Like selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Like record, @Param("example") LikeExample example);

    int updateByExample(@Param("record") Like record, @Param("example") LikeExample example);

    int updateByPrimaryKeySelective(Like record);

    int updateByPrimaryKey(Like record);
}