package com.kgc.bokeproject.mapper;

import com.kgc.bokeproject.pojo.Revert;
import com.kgc.bokeproject.pojo.RevertExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RevertMapper {
    int countByExample(RevertExample example);

    int deleteByExample(RevertExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Revert record);

    int insertSelective(Revert record);

    List<Revert> selectByExample(RevertExample example);

    Revert selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Revert record, @Param("example") RevertExample example);

    int updateByExample(@Param("record") Revert record, @Param("example") RevertExample example);

    int updateByPrimaryKeySelective(Revert record);

    int updateByPrimaryKey(Revert record);
}