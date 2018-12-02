package com.glf.jxframe.modules.music.search;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("music/search")
public class SearchController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(){
        return "modules/music/search/search";
    }
}
