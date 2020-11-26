package com.kgc.bokeproject.controller;

import com.kgc.bokeproject.pojo.Message;
import com.kgc.bokeproject.pojo.MessageExample;
import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;
import java.util.stream.Collectors;

@Controller
public class MessageController {

    @Autowired
    MessageService messageService;

    @RequestMapping("first.do")
    public  String first(){
        return "index";
    }


    /**
     * 消息框
     */

    @RequestMapping("/searchMessage.do")
    @ResponseBody
    public List<Message> searchMessage(){
        List<Message> messages = messageService.searchByAccountId(1);
        return messages;
    }

    /**
     * 未读消息数
     */

    @RequestMapping("/countMessage.do")
    @ResponseBody
    public Integer countMessage(){
        Integer integer = messageService.countByMessageStatus(1);
        if (integer>0){
            return integer;
        }else{
            return null;
        }
    }


    @RequestMapping("/searchChat.do")
    @ResponseBody
    public List<Message> searchChat(Integer rid){
        List<Message> messages = messageService.searchBySidAndRid(1, rid);
        return messages;
    }
}
