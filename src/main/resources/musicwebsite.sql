-- 初始化数据库
drop database if exists musicwebsite;
create database musicwebsite;
ALTER DATABASE musicwebsite CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';
use musicwebsite;



-- 所有关联：
-- 1、歌曲-专辑：多对一
-- 2、歌曲-歌手：多对多



-- 系统用户表
create table entity_sys_user(
  id varchar(40) primary key,
  userName varchar(60),
  password varchar(60)
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
  album_id varchar(40) comment '外键：该歌曲所属的专辑id',
  location varchar(200) comment '歌曲位置'
);

-- 歌手
create table entity_singer(
  id varchar(40) primary key,
  nickName varchar(60) comment '歌手别名',
  realName varchar(60) comment '歌手真名'
);

-- 专辑
create table entity_album(
  id varchar(40) primary key,
  name varchar(60) comment '专辑名'
);

-- 歌曲-歌手
create table map_song_singer(
  id varchar(40) primary key,
  song_id varchar(40),
  singer_id varchar(40)
);








-- 用户
insert into entity_sys_user values ('1', 'wangyan', 'wang12345');
insert into entity_sys_user values ('2', 'liuborun', 'liu12345');
insert into entity_sys_user values ('3', 'wuyujie', 'wu12345');
insert into entity_sys_user values ('4', 'zhangchi', 'zhang12345');
insert into entity_sys_user values ('5', 'liyaqi', 'li12345');
insert into entity_sys_user values ('6', 'admin', 'admin');

-- 歌曲
insert into entity_song values ('1', '歌曲1', '啦啦啦', '00:00:10', '1', '/static/songs/Last Christmas.mp3');
insert into entity_song values ('2', '歌曲2', '啦啦啦', '00:00:12', '1', '/static/songs/Last Christmas.mp3');
insert into entity_song values ('3', '歌曲3', '啦啦啦', '00:00:12', '1', '/static/songs/Last Christmas.mp3');
insert into entity_song values ('4', '歌曲4', '啦啦啦', '00:00:12', '3', '/static/songs/Beyond.mp3');
insert into entity_song values ('5', '念诗之王', '啦啦啦' ,'00:02:26', '2', '/static/songs/Beyond.mp3');

-- 专辑
insert into entity_album values ('1', '专辑1');
insert into entity_album values ('2', '专辑2');
insert into entity_album values ('3', '赵本山也要喝旺仔牛奶');

-- 歌手
insert into entity_singer values ('1', 'nick1', 'real1');
insert into entity_singer values ('2', 'nick2', 'real2');
insert into entity_singer values ('3', 'nick3', '小可儿');

-- 歌曲和歌手
insert into map_song_singer values ('1', '1', '2');
insert into map_song_singer values ('2', '1', '1');
insert into map_song_singer values ('3', '2', '1');
insert into map_song_singer values ('4', '3', '2');
insert into map_song_singer values ('5', '5', '3');