package com.glf.jxframe.modules.sys.web;

import com.glf.jxframe.modules.sys.entity.Category;
import com.glf.jxframe.modules.sys.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("listCategory")
    public ModelAndView listCategory(){
        ModelAndView mav = new ModelAndView();
        List<Category> cs = categoryService.list();

        mav.addObject("cs", cs);
        mav.setViewName("listCategory");
        return mav;
    }
}
