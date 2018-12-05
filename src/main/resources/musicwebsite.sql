-- 系统用户表
drop table if exists sys_user;
create table sys_user(
  id varchar(40) primary key,
  userName varchar(40),
  password varchar(40)
);

-- 系统角色表

-- 系统权限表

-- 用户-角色表

-- 角色-权限表

-- 歌曲
drop table if exists song;
create table song(
  id varchar(40) primary key,
  name varchar(40) comment '歌曲名称',
  words text comment '歌词内容',
  duration time comment '歌曲时长',
  author_id varchar(40) comment '所属作家id',
  album_id varchar(40) comment '所属专辑id'
);

-- 作家
drop table if exists author;
create table author(
  id varchar(40) primary key,
  nickName varchar(40) comment '作家别名',
  realName varchar(40) comment '作家真名'
);

-- 专辑
drop table if exists album;
create table album(
  id varchar(40) primary key,
  name varchar(40) comment '专辑名'
);