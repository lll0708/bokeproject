package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.EssayLike;

import java.util.List;

/**
 * 作品点赞表的业务逻辑层
 */

public interface LikeService {
    //点赞成功(添加一条数据)
    public boolean addLike(EssayLike like);
    //取消点赞
    public boolean deleteLikeById(Integer id);
    //查询点赞的人
    public List<EssayLike> selectLikeEssayUserByEssayId();
}
