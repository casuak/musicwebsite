package com.glf.jxframe.modules.music.findMusic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("music/findMusic")
public class FindMusicController {

    @RequestMapping("")
    public String index(){
        return "modules/music/findMusic/findMusic";
    }
}
