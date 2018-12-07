package com.glf.jxframe.web.content;

import com.glf.jxframe.common.page.PageHelper;
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
@RequestMapping("content/manageUser")
public class ManageUserController {

    @Autowired
    private SysUserDao sysUserDao;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(){
        return "content/manageUser";
    }

    /**
     * @return 返回所有用户的列表
     */
    @RequestMapping(value = "getAllSysUser", method = RequestMethod.GET)
    @ResponseBody
    public Object getAllSysUser(){
        return sysUserDao.getAllUser();
    }

    @RequestMapping(value = "list", method = RequestMethod.POST)
    @ResponseBody
    public Object list(@RequestBody PageHelper pageHelper){
        List<SysUser> list = sysUserDao.list(pageHelper);
        int total = sysUserDao.listTotal(pageHelper);
        Map<String, Object> result = new HashMap<>();
        result.put("list", list);
        result.put("total", total);
        return result;
    }

    @RequestMapping(value = "test", method = RequestMethod.POST)
    @ResponseBody
    public Object test(@RequestBody SysUser sysUser){
        return "Hello";
    }
}
