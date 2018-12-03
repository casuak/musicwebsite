package com.glf.jxframe.web.content;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("content/myCollection")
public class MyCollection {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(){
        return "content/myCollection";
    }
}
