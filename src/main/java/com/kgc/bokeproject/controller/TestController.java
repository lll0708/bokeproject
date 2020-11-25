package com.kgc.bokeproject.controller;

import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
public class TestController {
    @Resource
    LoginService loginService;

    @RequestMapping("denglu.do")
    public String test(HttpSession session){
        Users users = loginService.loginTest("a", "a");
        System.out.println("此时的账户昵称为："+users.getNickName());
        session.setAttribute("user",users);
        int userFans = loginService.getUserFans(users.getId());
        System.out.println("粉丝数为："+userFans);
        session.setAttribute("fans",userFans);
        int userFocusOn = loginService.getUserFocusOn(users.getId());
        session.setAttribute("focusOn",userFocusOn);
        return "index";
    }
}
