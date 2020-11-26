package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.MessageMapper;
import com.kgc.bokeproject.mapper.UsersMapper;
import com.kgc.bokeproject.pojo.Message;
import com.kgc.bokeproject.pojo.MessageExample;
import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService{
    @Autowired
    MessageMapper messageMapper;

    @Autowired
    UsersMapper usersMapper;
    @Override
    public List<Message> searchByAccountId(Integer id) {
        MessageExample example=new MessageExample();
        example.createCriteria().andSIdEqualTo(id);
        MessageExample.Criteria criteria = example.createCriteria().andRIdEqualTo(id);
        example.or(criteria);
        example.setOrderByClause("time desc");
        List<Message> messages = messageMapper.selectByExample(example);
        for (Message message : messages) {
            System.out.println(message.getUser().getNickName());
        }
        return messages;
    }

    @Override
    public List<Message> searchBySidAndRid(Integer sId, Integer rId) {
        MessageExample example=new MessageExample();
        example.createCriteria().andSIdEqualTo(sId).andRIdEqualTo(rId);
        example.setOrderByClause("time asc");
        List<Message> messages = messageMapper.selectByExample(example);
        return messages;
    }

    @Override
    public boolean send(Message message) {
        return messageMapper.insertSelective(message)>0?true:false;
    }

    @Override
    public Integer countByMessageStatus(Integer id) {
        MessageExample example=new MessageExample();
        example.createCriteria().andStatusEqualTo(0).andSIdEqualTo(id);
        int i = messageMapper.countByExample(example);
        return i;
    }

    @Override
    public boolean updateStatus(Integer sId,Integer rId) {
        Message message=new Message();
        message.setStatus(1);
        MessageExample example=new MessageExample();
        example.createCriteria().andSIdEqualTo(sId).andRIdEqualTo(rId);
        int i = messageMapper.updateByExampleSelective(message, example);
        return i>0?true:false;
    }

    @Override
    public Users searchUser(Integer id) {
        return usersMapper.selectByPrimaryKey(id);
    }

    public List<Message> searchByExample(MessageExample example) {
        example.setOrderByClause("time asc");
        List<Message> messages = messageMapper.selectByExample(example);
        return messages;
    }
}
