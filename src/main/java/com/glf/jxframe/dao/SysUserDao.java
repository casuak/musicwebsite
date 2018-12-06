package com.glf.jxframe.dao;

import com.glf.jxframe.entity.SysUser;

import java.util.List;

public interface SysUserDao {

    List<SysUser> getUserByUserName(String userName);

    void addUser(SysUser sysUser);
}
