package com.glf.jxframe.web;

import com.glf.jxframe.dao.SysUserDao;
import com.glf.jxframe.entity.SysUser;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
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
    public Object login(@RequestBody SysUser sysUser, HttpSession session) {
        Map<String, Object> result = new HashMap<>();
        result.put("status", 1);
        List<SysUser> userList = sysUserDao.getUserByUserName(sysUser.getUserName());
        // 用户名不存在
        if (userList.size() == 0) {
            result.put("status", 2);
            return result;
        }
        // 密码不匹配
        if (!isCorrectPassword(sysUser)) {
            result.put("status", 2);
            return result;
        }
        session.setAttribute("currentUser", userList.get(0));
        return result;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    @ResponseBody
    public Object logout(HttpSession session){
        session.removeAttribute("currentUser");
        return null;
    }

    /**
     * 根据当前是否登陆返回不同的信息
     * @param session
     * @return
     * 未登录 -- 未登录提示
     * 已登陆 -- 已登录提示 + 当前登陆用户信息
     */
    @RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
    @ResponseBody
    public Object checkLogin(HttpSession session){
        Map<String, Object> result = new HashMap<>();
        result.put("isLogin", true);
        SysUser currentUser = (SysUser)session.getAttribute("currentUser");
        if(currentUser == null){
            result.put("isLogin", false);
            return result;
        }
        else{
            result.put("userInfo", currentUser);
            return result;
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public Object register(@RequestBody SysUser registerInfo, HttpSession session) {
        Map<String, Object> result = new HashMap<>();
        result.put("status", 1); // 1 - 成功，2 - 失败
        // 检测用户名和密码是否合法
        if (isNullOrEmpty(registerInfo.getUserName()) || isNullOrEmpty(registerInfo.getPassword())) {
            result.put("status", 2);
        }
        // 检测用户名是否在数据库中已经存在
        else if (isUserNameExists(registerInfo.getUserName())) {
            result.put("status", 2);
        } else {
            sysUserDao.addUser(registerInfo);
        }
        // 登陆
        SysUser currentUser = sysUserDao.getUserByUserName(registerInfo.getUserName()).get(0);
        session.setAttribute("currentUser", currentUser);
        return result;
    }

    @RequestMapping(value = "/checkUserName", method = RequestMethod.POST)
    @ResponseBody
    public Object checkUserName(@RequestParam("userName") String userName) {
        Map<String, Object> result = new HashMap<>();
        result.put("status", 1);
        if (isUserNameExists(userName)) {
            result.put("status", 2);
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

    private boolean isNullOrEmpty(String text) {
        if (text == null || text.length() == 0) {
            return true;
        } else {
            return false;
        }
    }

    // 检测用户的密码是否正确
    private boolean isCorrectPassword(SysUser sysUser) {
        List<SysUser> userList = sysUserDao.getUserByUserName(sysUser.getUserName());
        // 用户名不存在
        if (userList.size() == 0) {
            return false;
        }
        // 密码不匹配
        SysUser realUser = userList.get(0);
        if (realUser.getPassword().equals(sysUser.getPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
