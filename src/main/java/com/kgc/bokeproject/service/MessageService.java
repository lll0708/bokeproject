package com.kgc.bokeproject.service;

import com.kgc.bokeproject.pojo.Message;
import com.kgc.bokeproject.pojo.MessageExample;
import com.kgc.bokeproject.pojo.Users;

import java.util.List;

/**
 * @author hnz
 */
public interface MessageService {

    /**
     * @param id 登录人的id
     * 查看最近发消息的用户信息
     * @return
     */
    public List<Message> searchByAccountId(Integer id);

    /**
     *查看对话框中的消息内容
     *@param sId 发送者ID
     *@param rId 收消息Id
     */
    public List<Message> searchBySidAndRid(Integer sId,Integer rId);

    /**
     * 发消息
     * 需要前端得到发送者id，收消息的Id
     * 消息内容
     * @param message 消息对象
     */
    public boolean send(Message message);

    /**
     * 查询未读消息的数量
     *@param id 登录者ID
     */
    public Integer countByMessageStatus(Integer id);


    /**
     * @param sId 发消息Id
     * @param rId 收消息Id
     * 修改阅读状态，将未读修改为已读
     */
    public boolean updateStatus(Integer sId,Integer rId);

    /**
     * 根据用户主键查用户
     */
    public Users searchUser(Integer id);


    public List<Message> searchByExample(MessageExample example);

    }
