package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.CollectMapper;
import com.kgc.bokeproject.pojo.Collect;
import com.kgc.bokeproject.pojo.CollectExample;
import com.kgc.bokeproject.service.CollectService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class CollectServiceImpl implements CollectService {
    @Resource
    CollectMapper collectMapper;
    //查看作品收藏数
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public int getCountEssayByEssayId(Integer essayId) {
        CollectExample example = new CollectExample();
        example.createCriteria().andEssayIdEqualTo(essayId);
        int i = collectMapper.countByExample(example);
        return i;
    }
    //查看用户以前是否收藏过此作品
    @Override
    public boolean getUserEssayCollect(Integer essayId, Integer userId) {
        CollectExample example = new CollectExample();
        example.createCriteria().andEssayIdEqualTo(essayId);
        List<Collect> collects = collectMapper.selectByExample(example);
        for (Collect collect : collects) {
            if (collect.getUserId() == userId){
                return true;
            }
        }
        return false;
    }
    //第一次收藏，添加一条收藏信息
    @Override
    public boolean addCollect(Collect collect) {
        int i = collectMapper.insertSelective(collect);
        return i>0?true:false;
    }
    //取消收藏（0）/已收藏过再次收藏改为1
    @Override
    public boolean updateCollect(Collect collect) {
        int i = collectMapper.updateByPrimaryKeySelective(collect);
        return i>0?true:false;
    }
    //查看作品收藏用户
    @Override
    public List<Collect> selectCollectByEssayId(Integer essayId) {
        CollectExample example = new CollectExample();
        example.createCriteria().andEssayIdEqualTo(essayId);
        List<Collect> collects = collectMapper.selectByExample(example);
        if (collects!=null&&collects.size()>0){
            return collects;
        }
        return null;
    }
}
