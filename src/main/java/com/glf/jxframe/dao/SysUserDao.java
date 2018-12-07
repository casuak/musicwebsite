package com.glf.jxframe.dao;

import com.glf.jxframe.common.page.PageHelper;
import com.glf.jxframe.entity.SysUser;

import java.util.List;

public interface SysUserDao {

    List<SysUser> getUserByUserName(String userName);

    void addUser(SysUser sysUser);

    List<SysUser> getAllUser();

    // 分页获取（包含搜索key）
    List<SysUser> list(PageHelper pageHelper);
    // 总数
    int listTotal(PageHelper pageHelper);
}
