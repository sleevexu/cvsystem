package com.iimr.cvsystem.controller;

import com.iimr.cvsystem.model.User;
import com.iimr.cvsystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 * Created by Jiajie on 2017/4/3.
 */

@Controller
@RequestMapping("/cvsystem")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/loginView")
    public String loginView(){
        return "login";
    }

    @RequestMapping("registerForm")
    public String registerView(){
        return "register";
    }

    @RequestMapping(value = "/registerUser")
    public ModelAndView registerUser(HttpServletRequest request)throws Exception{
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        User user1 = new User();
        user1.setUserName(userName);
        user1.setUserPassword(userPassword);

        ModelAndView mav = new ModelAndView();
        if (userService.register(user1)){
            mav.setViewName("registerSucc");
            return mav;
        }
        else {
            mav.setViewName("register");
            mav.addObject("errorMsg","用户名已被占用，请更换");
            return mav;
        }
    }


    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request, HttpSession session)throws Exception{
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        User user1 = new User();
        user1.setUserName(userName);
        user1.setUserPassword(userPassword);

        ModelAndView mav = new ModelAndView();
        User user2 = userService.loginCheck(user1);
        if(null==user2){
            mav.setViewName("login");
            mav.addObject("errorMsg","用户名或密码有误！");
            return mav;
        }
        else {
            mav.setViewName("/TestPage");
            mav.addObject("user",user1);
            session.setAttribute("userId",user2.getUserId());
            session.setAttribute("userName",user2.getUserName());
            System.out.println("session:userId:"+session.getAttribute("userId"));
            System.out.println("session:userName:"+session.getAttribute("userName"));
            return mav;
        }
    }

    @RequestMapping("/main")
    public String turnIndex(){
        return "/index";
    }

}
