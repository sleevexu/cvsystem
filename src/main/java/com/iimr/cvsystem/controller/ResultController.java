package com.iimr.cvsystem.controller;


import com.iimr.cvsystem.model.Ques;
import com.iimr.cvsystem.model.Result;
import com.iimr.cvsystem.model.UserInfo;
import com.iimr.cvsystem.service.QuesService;
import com.iimr.cvsystem.service.ResultService;
import com.iimr.cvsystem.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by Jiajie on 2017/4/5.
 */
@Controller
@RequestMapping("/cvsystem")
public class ResultController {

    @Autowired
    private ResultService resultService;
    private UserInfoService userInfoService;
    private QuesService quesService;

    public ResultController(UserInfoService userInfoService, QuesService quesService) {
        this.userInfoService = userInfoService;
        this.quesService = quesService;
    }

    @RequestMapping(value = "/submitTest",produces = "text/html;charset=UTF-8")
    public ModelAndView submitTest(Result result, UserInfo userInfo, Ques ques, HttpSession session) {
        ModelAndView mav = new ModelAndView("TestPage");
        Object object = session.getAttribute("userId");
        int userId = Integer.valueOf(object.toString());
        if (userInfoService.checkUserInfoBySampleId(userId)) {
            userInfoService.updateSampleId(result, userId);
            System.out.println("updateSampleId" + result.getSampleId());
        } else {
            if (userInfoService.checkUserInfoByLabId(userId)) {
                userInfoService.updateLabId(ques, userId);
                System.out.println("updateLabId" + ques.getLabId());
            } else {
                if (resultService.checkSampleId(result, userId)) {
                    resultService.updateResult(result);
                    quesService.updateQuesinResult(ques, userId);
                }
            }
        }
        if (userInfoService.checkUserInfoByLabId(userId)) {
            userInfoService.updateLabId(ques, userId);
            System.out.println("updateLabId" + ques.getLabId());
        } else {
            if (resultService.checkSampleId(result, userId)) {
                boolean x = resultService.updateResult(result);
                boolean y = quesService.updateQuesinResult(ques, userId);
                if(x&&y){
                    mav.setViewName("quesPage");
                    mav.addObject("userId",object);
                    mav.addObject("result",result);
                    mav.addObject("userInfo",userInfo);
                    mav.addObject("ques", ques);
                    mav.addObject("message","successful!");
                    return mav;
                }else{
                    mav.addObject("errorMsg","目标不存在");
                }
            } else {
                mav.addObject("errorMsg", "找不到匹配的目标");
            }
        }
        boolean x = resultService.updateResult(result);
        boolean y =quesService.updateQuesinResult(ques, userId);
        if(x&&y){
                mav.setViewName("quesPage");
                mav.addObject("userId",object);
                mav.addObject("result",result);
                mav.addObject("userInfo",userInfo);
                mav.addObject("questionnaire", ques);
                mav.addObject("message","successful2!");
                return mav;
        } else {
            mav.setViewName("TestPage");
            mav.addObject("userId", object);
            mav.addObject("result", result);
            mav.addObject("userInfo", userInfo);
            mav.addObject("ques", ques);
            mav.addObject("errorMsg", "上传失败");
            return mav;
        }
    }
}
