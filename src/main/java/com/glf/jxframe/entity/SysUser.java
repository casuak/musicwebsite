package com.glf.jxframe.entity;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SysUser {

    private String id;

    private String userName;

    private String password;

    private Date createTime;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return this.createTime;
    }

    public String getFormatCreateTime(){
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return formatter.format(this.createTime);
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
