package com.iimr.cvsystem.controller;

import com.iimr.cvsystem.model.Ques;
import com.iimr.cvsystem.service.QuesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by Jiajie on 2017/4/10.
 */
@Controller
@RequestMapping("/cvsystem")
public class QuesController {
    @Autowired
    private QuesService quesService;

    @RequestMapping(value = "/submitQues", produces = "text/html;charset=UTF-8")
    public ModelAndView submitQues(Ques ques, HttpSession session){
        ModelAndView mav = new ModelAndView("quesPage");
        Object object = session.getAttribute("userId");
        int userId = Integer.valueOf(object.toString());
        if(quesService.checkLabId(ques,userId)){
            if(quesService.updateQuesinQuse(ques,userId)) {
                mav.setViewName("submitSucc");
                mav.addObject("ques",ques);
                mav.addObject("message","successful!");
                return mav;
            }else {
                mav.setViewName("quesPage");
                mav.addObject("ques",ques);
                mav.addObject("errorMsg","提交失败");
                return  mav;
            }
        } else{
            mav.setViewName("quesPage");
            mav.addObject("ques",ques);
            mav.addObject("errorMsg","不存在该对象");
            return mav;
        }
    }
}

