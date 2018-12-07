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








insert into entity_song values('6', '心跳', 'a', '04:23', NULL, 'http://fs.w.kugou.com/201812072148/28516fc16a13039efcc90860c176d5e4/G007/M05/1F/19/Rw0DAFT930yAIqaWAD_tlsuFIqk991.mp3');
insert into entity_song values('7', '醉赤壁', 'a', '04:41', NULL, 'http://fs.w.kugou.com/201812072119/bd937c609419813c76fe43715ffaa540/G142/M04/13/13/zg0DAFuKd7SAd8rQAESUe9bXyXk676.mp3');
insert into entity_song values('8', '可惜没如果', 'a', '04:58' ,NULL, 'http://fs.w.kugou.com/201812072141/ab7d807567340295c55a191c0c5d98dd/G012/M02/18/1B/rIYBAFUPGLiAY70aAEjYKJYV34o632.mp3');
insert into entity_song values('9', '她说', 'a', '05:20' ,NULL, 'http://fs.w.kugou.com/201812072107/107918380fd58afe4be8e17218720f12/G013/M02/1C/04/rYYBAFUK4k-AfHs8AE5NGHELcMw138.mp3');
insert into entity_song values('10', '江南', 'a', '04:27' ,NULL, 'http://fs.w.kugou.com/201812072115/c3807034a5a94394b4e51006a7595d8c/G004/M08/16/03/pIYBAFS-a_aAcZRBAEGtSN5wixs886.mp3');
insert into entity_song values('11', '我们', 'a', '04:20' ,NULL, 'http://fs.w.kugou.com/201812072205/180d0ad8cc384c70073ae60a0b1db51f/G132/M08/04/17/xA0DAFrMp6WAW1G3AD-0vqnx2mw603.mp3');
insert into entity_song values('12', '淘汰', 'a', '04:45' ,NULL, 'http://fs.w.kugou.com/201812072137/6bc3bec1fa15b39caf9841bcf94e1fd3/G014/M08/1D/0F/Tg0DAFUPK-SAZ4HyAEWaBtGXF0M829.mp3');
insert into entity_song values('13', '好久不见', 'a', '04:10' ,NULL, 'http://fs.w.kugou.com/201812072206/dd660c1efacf4a93e96317c2373a9b7a/G032/M08/0F/03/wIYBAFWhiyGAMhCRAD7R8d6vhBc112.mp3');
insert into entity_song values('14', '红玫瑰', 'a', '03:59' ,NULL, 'http://fs.w.kugou.com/201812072123/6d378a75c1654b8a16dc85ae86b0547b/G008/M08/07/17/SA0DAFT-vDKAVnOvADqfOLPG3ig724.mp3');
insert into entity_song values('15', '爱情转移', 'a', '04:19' ,NULL, 'http://fs.w.kugou.com/201812072142/4a08019c0cf8deeb0ad907a55752e337/G006/M07/07/09/poYBAFS2pCOAEtnhAD8xOYM1hrE018.mp3');

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