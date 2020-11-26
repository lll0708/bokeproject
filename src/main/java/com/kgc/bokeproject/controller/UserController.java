package com.kgc.bokeproject.controller;

import com.kgc.bokeproject.pojo.Users;
import com.kgc.bokeproject.service.SmsSampleService;
import com.kgc.bokeproject.service.UsersService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Random;

/**
 * @author shkstart
 * @create 2020-11-26 16:20
 */
@Controller
public class UserController {
    @Resource
    UsersService usersService;

    @Resource
    SmsSampleService smsSampleService;
    /**
     * 跳转登陆注册页面
     * @return sign-in.jsp
     */
    @RequestMapping("login.do")
    public String denglu(){
        return "sign-in";
    }

    /**
     * 登陆验证
     * @param phone 手机号
     * @param password 密码
     * @param session 作用域
     * @return
     */
    @RequestMapping(value = "dengluyz.do",method = RequestMethod.POST,produces="text/html;charset=utf-8")
    @ResponseBody
    public String dengluyz(@RequestParam("dlphone")String phone, @RequestParam("dlpassword")String password, HttpSession session){
        List<Users> users = usersService.listCheckLogin(phone, password);
        if(users.size()>0){
            Users user=users.get(0);
            if(user.getStatus()==3){
                return "<script>alert('登录失败，该账户已删除，请联系管理员+Q：631571033！');location.href='login.do';</script>";
            }else if(user.getStatus()==2){
                return "<script>alert('登录失败，该账户已冻结，请联系管理员+Q：631571033！');location.href='login.do';</script>";
            }else{
                //存储到session
                session.setAttribute("users", users);
                return "<script>alert('登录成功(*^▽^*)');location.href='denglu.do?';</script>";
            }
        }else{
            return "<script>alert('该账号不存在，请先注册！');location.href='login.do';</script>";
        }
    }


    @RequestMapping(value = "noteVerify.do",method = RequestMethod.GET,produces="text/html;charset=utf-8")
    @ResponseBody
    public String noteVerify(@RequestParam("zcphone")String phone,HttpSession session){
        String number="";
        for (int i=1;i<=6;i++){
            number+=(int)(Math.random()*10);
        }
        smsSampleService.getResult(phone,number);
        return null;
    }
}
