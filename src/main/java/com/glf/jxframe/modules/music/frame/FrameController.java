package com.glf.jxframe.modules.music.frame;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("")
public class FrameController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String frame(){
        return "modules/music/frame/frame";
    }

}
