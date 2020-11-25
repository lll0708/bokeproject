package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.EssayMapper;
import com.kgc.bokeproject.pojo.Essay;
import com.kgc.bokeproject.service.EssayService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * a
 * @author 李龙龙
 * 2020年11月25日19:41:09
 */

@Service
public class EssayServiceImpl implements EssayService{
    @Resource
    EssayMapper essayMapper;
    //根据id查询作品(用于列出全文)
    @Override
    public Essay getById(Integer id) {
        return essayMapper.selectByPrimaryKey(id);
    }

    //编辑作品(用于修改作品被点赞的次数，以及修改自己已发布的文章)
    @Override
    public boolean updateEssqyById(Essay essay) {
        int i = essayMapper.updateByPrimaryKeySelective(essay);
        return i>0?true:false;
    }
    //添加作品
    @Override
    public boolean addEssay(Essay essay) {
        int i = essayMapper.insertSelective(essay);
        return i>0?true:false;
    }
    //删除自己作品
    @Override
    public boolean deleteEssayById(Integer id) {
        int i = essayMapper.deleteByPrimaryKey(id);
        return i>0?true:false;
    }
}
