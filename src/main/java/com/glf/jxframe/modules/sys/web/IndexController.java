package com.glf.jxframe.modules.sys.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class IndexController {

    @RequestMapping(value = "")
    public String index(){
        return "/modules/sys/index/sysIndex";
    }

    @RequestMapping(value = "/main_blocks/top")
    public String top(){
        return "/modules/sys/index/main_blocks/top";
    }

    @RequestMapping(value = "/main_blocks/left")
    public String left(){
        return "/modules/sys/index/main_blocks/left";
    }

    @RequestMapping(value = "/main_blocks/right")
    public String right(){
        return "/modules/sys/index/main_blocks/right";
    }

    @RequestMapping(value = "/main_blocks/bottom")
    public String bottom(){
        return "/modules/sys/index/main_blocks/bottom";
    }
}
