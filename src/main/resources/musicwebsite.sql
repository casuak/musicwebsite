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

-- 歌曲-专辑
create table map_song_album(
  id varchar(40) primary key,
  song_id varchar(40),
  album_id varchar(40)
);








-- 用户
insert into entity_sys_user values ('1', now(), 'wangyan', 'wang12345');
insert into entity_sys_user values ('2', now(), 'liuborun', 'liu12345');
insert into entity_sys_user values ('3', now(), 'wuyujie', 'wu12345');
insert into entity_sys_user values ('4', now(), 'zhangchi', 'zhang12345');
insert into entity_sys_user values ('5', now(), 'liyaqi', 'li12345');
insert into entity_sys_user values ('6', now(), 'admin', 'admin');







insert into entity_song values('1', '心跳', 'a', '04:23', NULL, 'http://fs.w.kugou.com/201812072148/28516fc16a13039efcc90860c176d5e4/G007/M05/1F/19/Rw0DAFT930yAIqaWAD_tlsuFIqk991.mp3');
insert into entity_song values('2', '醉赤壁', 'a', '04:41', NULL, 'http://fs.w.kugou.com/201812072119/bd937c609419813c76fe43715ffaa540/G142/M04/13/13/zg0DAFuKd7SAd8rQAESUe9bXyXk676.mp3');
insert into entity_song values('3', '可惜没如果', 'a', '04:58' ,NULL, 'http://fs.w.kugou.com/201812072141/ab7d807567340295c55a191c0c5d98dd/G012/M02/18/1B/rIYBAFUPGLiAY70aAEjYKJYV34o632.mp3');
insert into entity_song values('4', '她说', 'a', '05:20' ,NULL, 'http://fs.w.kugou.com/201812072107/107918380fd58afe4be8e17218720f12/G013/M02/1C/04/rYYBAFUK4k-AfHs8AE5NGHELcMw138.mp3');
insert into entity_song values('5', '江南', 'a', '04:27' ,NULL, 'http://fs.w.kugou.com/201812072115/c3807034a5a94394b4e51006a7595d8c/G004/M08/16/03/pIYBAFS-a_aAcZRBAEGtSN5wixs886.mp3');
insert into entity_song values('6', '我们', 'a', '04:20' ,NULL, 'http://fs.w.kugou.com/201812072205/180d0ad8cc384c70073ae60a0b1db51f/G132/M08/04/17/xA0DAFrMp6WAW1G3AD-0vqnx2mw603.mp3');
insert into entity_song values('7', '淘汰', 'a', '04:45' ,NULL, 'http://fs.w.kugou.com/201812072137/6bc3bec1fa15b39caf9841bcf94e1fd3/G014/M08/1D/0F/Tg0DAFUPK-SAZ4HyAEWaBtGXF0M829.mp3');
insert into entity_song values('8', '好久不见', 'a', '04:10' ,NULL, 'http://fs.w.kugou.com/201812072206/dd660c1efacf4a93e96317c2373a9b7a/G032/M08/0F/03/wIYBAFWhiyGAMhCRAD7R8d6vhBc112.mp3');
insert into entity_song values('9', '红玫瑰', 'a', '03:59' ,NULL, 'http://fs.w.kugou.com/201812072123/6d378a75c1654b8a16dc85ae86b0547b/G008/M08/07/17/SA0DAFT-vDKAVnOvADqfOLPG3ig724.mp3');
insert into entity_song values('10', '爱情转移', 'a', '04:19' ,NULL, 'http://fs.w.kugou.com/201812072142/4a08019c0cf8deeb0ad907a55752e337/G006/M07/07/09/poYBAFS2pCOAEtnhAD8xOYM1hrE018.mp3');
insert into entity_song values('11', '好久不见', 'a', '04:11', NULL, 'http://fs.w.kugou.com/201812072235/24e26ee7341db4359d906ab62066cc0e/G004/M06/05/10/pIYBAFUAVJaATIupAD2C0yzWIeo995.mp3');
insert into entity_song values('12', '我们', 'a', '04:19', NULL, 'http://fs.w.kugou.com/201812072238/1cc9a2d201354c49ec3bbbc0beac88a5/G140/M06/10/1D/bJQEAFuI9juACROjAD9wkQcGH98057.mp3');
insert into entity_song values('13', '江南(live)', 'a', '04:42', NULL, 'http://fs.w.kugou.com/201812072247/554d226cd4d121922fb8264487c3419d/G001/M01/1F/1F/oYYBAFS3gt6AQCupAEUXBNzUO8Y615.mp3');
insert into entity_song values('14', 'My Love', 'a', '03:53', NULL, 'http://fs.w.kugou.com/201812072308/eef5460157ef26e614aaaa3c621f28ff/G011/M03/1A/18/q4YBAFUJpaOAP5qMADkJjLkKC14038.mp3');
insert into entity_song values('15', '水星记', 'a', '05:25', NULL, 'http://fs.w.kugou.com/201812072252/6d88bb2fa78b0398f16e3226ef1ef468/G080/M02/1F/15/8IYBAFgum_yAXntkAE9rnAXKMlI729.mp3');
insert into entity_song values('16', '山海', 'a', '04:11', NULL, 'http://fs.w.kugou.com/201812072249/be4bc862a12bb94bcad9032e2fe14e8a/G059/M04/06/11/ew0DAFcpdeqAI8pNAD1Q0giEAvg926.mp3');
insert into entity_song values('17', '烂泥', 'a', '02:29', NULL, 'http://fs.w.kugou.com/201812072317/c14466e3bb0279a2e46006b6d617a32a/G060/M0A/00/13/3IYBAFcp9yeAG_C-ACSGYDJqoc4183.mp3');

insert into entity_singer values('1', '王力宏', '王力宏');
insert into entity_singer values('2', '林俊杰', '林俊杰');
insert into entity_singer values('3', '陈奕迅', '陈奕迅');
insert into entity_singer values('4', '周杰伦', '周杰伦');
insert into entity_singer values('5', '许巍', '许巍');
insert into entity_singer values('6', 'Westlife','Westlife');
insert into entity_singer values('7', '郭顶', '郭顶');
insert into entity_singer values('8', '草东没有派对');

insert into map_song_singer values('1', '1', '1');
insert into map_song_singer values('2', '2', '2');
insert into map_song_singer values('3', '3', '2');
insert into map_song_singer values('4', '4', '2');
insert into map_song_singer values('5', '5', '2');
insert into map_song_singer values('6', '6', '3');
insert into map_song_singer values('7', '7', '3');
insert into map_song_singer values('8', '8', '3');
insert into map_song_singer values('9', '9', '3');
insert into map_song_singer values('10', '10', '3');
insert into map_song_singer values('11', '11', '4');
insert into map_song_singer values('12', '12', '5');
insert into map_song_singer values('13', '13', '2');
insert into map_song_singer values('14', '14', '6');
insert into map_song_singer values('15', '15', '7');
insert into map_song_singer values('16', '16', '8');
insert into map_song_singer values('17', '17', '8');

insert into entity_album values('1', '心·跳');
insert into entity_album values('2', 'JJ陆');
insert into entity_album values('3', '新地球');
insert into entity_album values('4', '她说');
insert into entity_album values('5', '第二天堂');
insert into entity_album values('6', '我们');
insert into entity_album values('7', '认了吧');
insert into entity_album values('8', '跨时代');
insert into entity_album values('9', '爱如少年');
insert into entity_album values('10', 'I AM 世界巡回演唱会');
insert into entity_album values('11', 'The Lovesongs');
insert into entity_album values('12', '飞行器的执行周期');
insert into entity_album values('13', '丑奴儿');

insert into map_song_album values('1', '1', '1');
insert into map_song_album values('2', '2', '2');
insert into map_song_album values('3', '3', '3');
insert into map_song_album values('4', '4', '4');
insert into map_song_album values('5', '5', '5');
insert into map_song_album values('6', '6', '6');
insert into map_song_album values('7', '7', '7');
insert into map_song_album values('8', '8', '7');
insert into map_song_album values('9', '9', '7');
insert into map_song_album values('10', '10', '7');
insert into map_song_album values('11', '11', '8');
insert into map_song_album values('12', '12', '9');
insert into map_song_album values('13', '13', '10');
insert into map_song_album values('14', '14', '11');
insert into map_song_album values('15', '15', '12');
insert into map_song_album values('16', '16', '13');
insert into map_song_album values('17', '17', '13');
