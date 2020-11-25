package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.Fans;
import com.kgc.bokeproject.pojo.FansExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FansMapper {
    int countByExample(FansExample example);

    int deleteByExample(FansExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Fans record);

    int insertSelective(Fans record);

    List<Fans> selectByExample(FansExample example);

    Fans selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Fans record, @Param("example") FansExample example);

    int updateByExample(@Param("record") Fans record, @Param("example") FansExample example);

    int updateByPrimaryKeySelective(Fans record);

    int updateByPrimaryKey(Fans record);
}