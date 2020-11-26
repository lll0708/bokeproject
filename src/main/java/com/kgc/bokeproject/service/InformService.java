package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.Inform;

import java.util.List;

/**
 * @author 李龙龙
 * 2020年11月26日14:44:01
 * 举报表service接口
 */
public interface InformService {
    //提交举报信息(添加一条信息)
    public boolean addInform(Inform inform);
    //查询所有举报信息
    public List<Inform> selectInformAll();
}
