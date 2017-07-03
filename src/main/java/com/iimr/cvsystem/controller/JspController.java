package com.iimr.cvsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Jiajie on 2017/4/4.
 */
@Controller
@RequestMapping("/cvsystem")
public class JspController {
    @RequestMapping("test")
    public String TestView(){
        return "TestPage";
    }
    @RequestMapping("question")
    public String QuesPage(){
        return "quesPage";
    }

}
