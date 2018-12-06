package com.glf.jxframe.web;

import com.glf.jxframe.dao.SysUserDao;
import com.glf.jxframe.entity.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private SysUserDao sysUserDao;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Object login(@RequestBody SysUser sysUser) {
        return null;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public Object register(@RequestBody SysUser registerInfo) {
        Map<String, Object> result = new HashMap<>();
        result.put("statusCode", 1); // 1 - 成功，2 - 失败
        // 检测用户名是否在数据库中已经存在
        if (isUserNameExists(registerInfo.getUserName())) {
            result.put("statusCode", 2);
        } else {
            sysUserDao.addUser(registerInfo);
        }
        return result;
    }

    private boolean isUserNameExists(String userName) {
        List<SysUser> userList = sysUserDao.getUserByUserName(userName);
        if (userList.size() > 0) {
            return true;
        }
        return false;
    }
}
