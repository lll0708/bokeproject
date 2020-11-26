package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.EssayLikeMapper;
import com.kgc.bokeproject.pojo.EssayLike;
import com.kgc.bokeproject.pojo.EssayLikeExample;
import com.kgc.bokeproject.service.EssayLikeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class EssayLikeServiceImpl implements EssayLikeService {
    @Resource
    EssayLikeMapper essayLikeMapper;

    //点赞前查看该用户是否对此作品进行过点赞
    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public boolean getByUserId(Integer essayId,Integer userId) {
        EssayLikeExample example = new EssayLikeExample();
        example.createCriteria().andUserIdEqualTo(userId);
        List<EssayLike> likes = essayLikeMapper.selectByExample(example);
        if (likes!=null && likes.size()>0){
            for (EssayLike like : likes) {
                if (like.getEssayId()==essayId){
                    return true;
                }
            }
        }
        return false;
    }

    //第一次点赞成功(添加一条数据)
    @Override
    public boolean addLike(EssayLike essayLike) {
        int i = essayLikeMapper.insertSelective(essayLike);
        return i>0?true:false;
    }


    //取消点赞(更改自己点赞的属性status为0)
    @Override
    public boolean updateLike(Integer id) {
        EssayLike like = essayLikeMapper.selectByPrimaryKey(id);
        like.setStatus(0);
        int i = essayLikeMapper.updateByPrimaryKeySelective(like);
        return i>0?true:false;
    }

    //查询点赞的人
    @Override
    public List<EssayLike> selectLikeEssayUserByEssayId(Integer essayId){
        EssayLikeExample example = new EssayLikeExample();
        example.createCriteria().andEssayIdEqualTo(essayId);
        List<EssayLike> likes = essayLikeMapper.selectByExample(example);
        if (likes!=null && likes.size()>0){
            return likes;
        }
        return null;
    }
}
