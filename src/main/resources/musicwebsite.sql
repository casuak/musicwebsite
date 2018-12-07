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
  createTime datetime,
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
insert into entity_sys_user values ('1', now(), 'wangyan', 'wang12345');
insert into entity_sys_user values ('2', now(), 'liuborun', 'liu12345');
insert into entity_sys_user values ('3', now(), 'wuyujie', 'wu12345');
insert into entity_sys_user values ('4', now(), 'zhangchi', 'zhang12345');
insert into entity_sys_user values ('5', now(), 'liyaqi', 'li12345');
insert into entity_sys_user values ('6', now(), 'admin', 'admin');

-- 歌曲
insert into entity_song values ('1', '歌曲1', '啦啦啦', '00:10', '1', '/static/songs/Last Christmas.mp3');
insert into entity_song values ('2', '歌曲2', '啦啦啦', '00:12', '1', '/static/songs/Last Christmas.mp3');
insert into entity_song values ('3', '歌曲3', '啦啦啦', '00:12', '1', '/static/songs/Last Christmas.mp3');
insert into entity_song values ('4', '歌曲4', '啦啦啦', '00:12', '3', '/static/songs/Beyond.mp3');
insert into entity_song values ('5', '念诗之王', '啦啦啦' ,'02:26', '2', '/static/songs/Beyond.mp3');

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








insert into entity_song values('6', '心跳', 'a', '04:23', NULL, 'http://m10.music.126.net/20181207205859/280ac410330650d618c4b0dfae77b1ae/ymusic/3704/8601/3c9a/8b83b7ea059fe7e06a9a38693b8b2e92.mp3');
insert into entity_song values('7', '醉赤壁', 'a', '04:41', NULL, 'http://m10.music.126.net/20181207210137/3d9f09f2d0b9dfee9b13c73454605aa9/ymusic/b859/cc34/7579/d4775a3cc496a1a1deb5ea5a48c8daa6.mp3');
insert into entity_song values('8', '可惜没如果', 'a', '04:58' ,NULL, 'http://m10.music.126.net/20181207210239/c89366c57f4072c0587d9258c32f7774/ymusic/740b/4504/2f5f/3231ce4bac72b0f24d53397af7b34189.mp3');
insert into entity_song values('9', '她说', 'a', '05:20' ,NULL, 'http://m10.music.126.net/20181207210321/0e68969477cc0b82371b84d1ecf073af/ymusic/4817/c06c/d440/2b560590e90c93dbfbf7594a53a38d70.mp3');
insert into entity_song values('10', '江南', 'a', '04:27' ,NULL, 'http://m10.music.126.net/20181207210409/7543b60f379c36ac443d13989859aea4/ymusic/8b53/b4e9/b60f/85a5b4d07d6e64e9fdf029148f9e71ca.mp3');
insert into entity_song values('11', '我们', 'a', '04:20' ,NULL, 'http://m10.music.126.net/20181207210524/e3f58761249fa73ffaafc6475e27d9d5/ymusic/520f/0309/0109/ee0d951e364c4b3300db6c727cfff5dd.mp3');
insert into entity_song values('12', '淘汰', 'a', '04:45' ,NULL, 'http://m10.music.126.net/20181207210601/f310d3fb2477ba3128efafe5cf5d380a/ymusic/96ad/979d/388d/cc4112b4da9dc60264cddee495150ee9.mp3');
insert into entity_song values('13', '好久不见', 'a', '04:10' ,NULL, 'http://m10.music.126.net/20181207210633/9cf614ab0162f89d4cb2b385646a105a/ymusic/d8ce/08c3/986c/844405c5672efe9b10076bab25d7bce2.mp3');
insert into entity_song values('14', '红玫瑰', 'a', '03:59' ,NULL, 'http://m10.music.126.net/20181207210712/3fb0c35dd8b1785e8f0d26be8a40c731/ymusic/6cf9/3003/9e72/d9dab50f0aa723753c5652dd73a04daf.mp3');
insert into entity_song values('15', '爱情转移', 'a', '04:19' ,NULL, 'http://m10.music.126.net/20181207211106/ee7d675a802e878947a88796dcf4b94c/ymusic/6811/1264/ea16/1d4423658007def2c642a5b18c311fdf.mp3');

insert into entity_singer values('4', '王力宏', '王力宏');
insert into entity_singer values('5', '林俊杰', '林俊杰');
insert into entity_singer values('6', '陈奕迅', '陈奕迅');

insert into map_song_singer values('6', '6', '4');
insert into map_song_singer values('7', '7', '5');
insert into map_song_singer values('8', '8', '5');
insert into map_song_singer values('9', '9', '5');
insert into map_song_singer values('10', '10', '5');
insert into map_song_singer values('11', '11', '6');
insert into map_song_singer values('12', '12', '6');
insert into map_song_singer values('13', '13', '6');
insert into map_song_singer values('14', '14', '6');
insert into map_song_singer values('15', '15', '6');
