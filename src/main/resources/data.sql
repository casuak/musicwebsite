use musicwebsite;

insert into entity_song values ('1', '歌曲1', '啦啦啦', '00:00:10', '1');
insert into entity_song values ('2', '歌曲2', '啦啦啦', '00:00:12', '1');
insert into entity_song values ('3', '歌曲3', '啦啦啦', '00:00:12', '1');
insert into entity_song values ('4', '歌曲4', '啦啦啦', '00:00:12', null);

insert into entity_album values ('1', '专辑1');
insert into entity_album values ('2', '专辑2');

insert into entity_author values ('1', 'nick1', 'real1');
insert into entity_author values ('1', 'nick2', 'real2');

-- 第一首歌有两个作者
insert into map_song_author values ('1', '1', '2');
insert into map_song_author values ('2', '1', '1');
insert into map_song_author values ('3', '2', '1');
insert into map_song_author values ('4', '3', '2');