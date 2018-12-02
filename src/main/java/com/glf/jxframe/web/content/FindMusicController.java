package com.glf.jxframe.web.content;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("content/findMusic")
public class FindMusicController {

    @RequestMapping("")
    public String index(){
        return "content/findMusic";
    }
}
