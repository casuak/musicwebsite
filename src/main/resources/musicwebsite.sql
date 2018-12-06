drop database if exists musicwebsite;
create database musicwebsite;
ALTER DATABASE musicwebsite CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';
use musicwebsite;
-- 系统用户表
create table entity_sys_user(
  id varchar(40) primary key,
  userName varchar(60),
  password varchar(60)
);
-- 系统角色表
create table entity_sys_role(
  id varchar(40) primary key,
  name varchar(60)
);
-- 系统权限表
create table entity_sys_permission(
  id varchar(40) primary key,
  name varchar(60)
);

-- 系统角色表

-- 系统权限表

-- 用户-角色表

-- 角色-权限表

-- 歌曲
create table entity_song(
  id varchar(40) primary key,
  name varchar(60) comment '歌曲名称',
  words text comment '歌词内容',
  duration time comment '歌曲时长',
  album_id varchar(40) comment '外键：该歌曲所属的专辑id'
);

-- 作家
create table entity_author(
  id varchar(40) primary key,
  nickName varchar(60) comment '作家别名',
  realName varchar(60) comment '作家真名'
);

-- 专辑
create table entity_album(
  id varchar(40) primary key,
  name varchar(60) comment '专辑名'
);

-- 搜索记录表
create table entity_searchHistory(
  id varchar(40) primary key,
  content varchar(200) comment '搜索内容',
  createTime datetime comment '创建时间',
  user_id varchar(40) comment '创建用户的id'
);




-- 歌曲-作家（多对多）
create table map_song_author(
  id varchar(40) primary key,
  song_id varchar(40),
  author_id varchar(40)
);















insert into entity_song values ('1', '歌曲1', '啦啦啦', '00:00:10', '1');
insert into entity_song values ('2', '歌曲2', '啦啦啦', '00:00:12', '1');
insert into entity_song values ('3', '歌曲3', '啦啦啦', '00:00:12', '1');
insert into entity_song values ('4', '歌曲4', '啦啦啦', '00:00:12', null);

insert into entity_album values ('1', '专辑1');
insert into entity_album values ('2', '专辑2');

insert into entity_author values ('1', 'nick1', 'real1');
insert into entity_author values ('2', 'nick2', 'real2');

-- 第一首歌有两个作者
insert into map_song_author values ('1', '1', '2');
insert into map_song_author values ('2', '1', '1');
insert into map_song_author values ('3', '2', '1');
insert into map_song_author values ('4', '3', '2');
