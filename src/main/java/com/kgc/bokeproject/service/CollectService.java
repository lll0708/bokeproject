package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.Collect;

import java.util.List;

/**
 * @author 李龙龙
 * 收藏作品service接口
 * 2020年11月26日12:08:51
 */
public interface CollectService {
    //查看作品收藏数
    public int getCountEssayByEssayId(Integer essayId);
    //查看用户以前是否收藏过此作品
    public boolean getUserEssayCollect(Integer essayId,Integer userId);
    //第一次收藏，添加一条收藏信息
    public boolean addCollect(Collect collect);
    //取消收藏（0）/已收藏过再次收藏改为1
    public boolean updateCollect(Collect collect);
    //查看作品收藏用户
    public List<Collect> selectCollectByEssayId(Integer essayId);
}
