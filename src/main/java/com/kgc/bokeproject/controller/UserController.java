package com.kgc.bokeproject.controller;

import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.service.UsersService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 16:20
 */
@Controller
public class UserController {
    @Resource
    UsersService usersService;
    //登陆页面
    @RequestMapping("denglu.do")
    public String denglu(){
        return "sign-in";
    }
    //登陆验证
    @RequestMapping("dengluyz")
    public String dengluyz(@RequestParam("dlphone")String phone, @RequestParam("dlpassword")String password, HttpSession session){
        List<Users> users = usersService.listCheckLogin(phone, password);
        if(users.size()>0){
            Users user=users.get(0);
            //存储到session
            session.setAttribute("users",users);
        }else{

        }
           return null;
    }
}
