package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.EssayLike;

import java.util.List;

/**
 * @author 李龙龙
 * 作品点赞表的业务逻辑层
 */
public interface EssayLikeService {
    //点赞前查看该用户是否对此作品进行过点赞
    public boolean getByUserId(Integer essayId,Integer userId);
    //第一次点赞成功(添加一条数据)
    public boolean addLike(EssayLike essayLike);
    //取消点赞/重新点赞
    public boolean updateLike(EssayLike essayLike);
    //查询点赞的人
    public List<EssayLike> selectLikeEssayUserByEssayId(Integer essayId);
}
