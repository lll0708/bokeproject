package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.EssayType;
import com.kgc.bokeproject.pojo.EssayTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EssayTypeMapper {
    int countByExample(EssayTypeExample example);

    int deleteByExample(EssayTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(EssayType record);

    int insertSelective(EssayType record);

    List<EssayType> selectByExample(EssayTypeExample example);

    EssayType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") EssayType record, @Param("example") EssayTypeExample example);

    int updateByExample(@Param("record") EssayType record, @Param("example") EssayTypeExample example);

    int updateByPrimaryKeySelective(EssayType record);

    int updateByPrimaryKey(EssayType record);
}