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

/**
 * 接口整理：
 * 1、null - 返回页面
 * 2、listSysUser - 分页 + 搜索 -> 用户列表 + 总数
 * 3、addSysUser 参数：一个SysUser对象，完成添加功能
 */
@Controller
@RequestMapping("content/manageUser")
public class ManageUserController {

    @Autowired
    private SysUserDao sysUserDao;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(){
        return "content/manageUser";
    }

    @RequestMapping(value = "sysUser/select", method = RequestMethod.POST)
    @ResponseBody
    public Object sysUserSelect(@RequestBody PageHelper pageHelper){
        List<SysUser> list = sysUserDao.list(pageHelper);
        int total = sysUserDao.listTotal(pageHelper);
        Map<String, Object> result = new HashMap<>();
        result.put("list", list);
        result.put("total", total);
        return result;
    }

    @RequestMapping(value = "sysUser/insert", method = RequestMethod.POST)
    @ResponseBody
    public Object sysUserInsert(@RequestBody SysUser newSysUser){
        return null;
    }

    @RequestMapping(value = "test", method = RequestMethod.POST)
    @ResponseBody
    public Object test(@RequestBody SysUser sysUser){
        return "Hello";
    }
}
