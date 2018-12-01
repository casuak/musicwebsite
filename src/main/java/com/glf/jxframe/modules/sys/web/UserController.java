package com.glf.jxframe.modules.sys.web;

import com.glf.jxframe.modules.sys.dao.UserDao;
import com.glf.jxframe.modules.sys.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("")
public class UserController {

    @Autowired
    private UserDao userDao;

    @RequestMapping("userList")
    public String userList(){
        List<User> userList = userDao.list();
        return "userList";
    }
}
