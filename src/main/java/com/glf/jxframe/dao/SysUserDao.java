package com.glf.jxframe.dao;

import com.glf.jxframe.common.page.PageHelper;
import com.glf.jxframe.entity.SysUser;

import java.util.List;

public interface SysUserDao {

    // 通过用户名获取用户列表（正常逻辑下返回条数为0或者1）
    List<SysUser> getUserByUserName(String userName);
    // 添加用户
    void addUser(SysUser sysUser);
    // 分页获取（包含搜索key）
    List<SysUser> list(PageHelper pageHelper);
    // 总数
    int listTotal(PageHelper pageHelper);
}
