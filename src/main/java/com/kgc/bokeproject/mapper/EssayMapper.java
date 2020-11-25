package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.Essay;
import com.kgc.bokeproject.pojo.EssayExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EssayMapper {
    int countByExample(EssayExample example);

    int deleteByExample(EssayExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Essay record);

    int insertSelective(Essay record);

    List<Essay> selectByExample(EssayExample example);

    Essay selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Essay record, @Param("example") EssayExample example);

    int updateByExample(@Param("record") Essay record, @Param("example") EssayExample example);

    int updateByPrimaryKeySelective(Essay record);

    int updateByPrimaryKey(Essay record);
}