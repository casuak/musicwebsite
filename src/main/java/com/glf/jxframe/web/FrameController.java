package com.glf.jxframe.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("")
public class FrameController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String frame(){
        System.out.println();
        return "frame";
    }

}
