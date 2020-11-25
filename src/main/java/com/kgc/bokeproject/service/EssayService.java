package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.Essay;

/**
 * 作品表的业务逻辑层
 */
public interface EssayService {
    //根据id查询作品
    public Essay getById(Integer id);
    //编辑作品(用于修改作品被点赞的次数，以及修改自己已发布的文章)
    public boolean updateEssqyById(Essay essay);
    //添加作品
    public boolean addEssay(Essay essay);
    //删除自己作品
    public boolean deleteEssayById(Integer id);
}
