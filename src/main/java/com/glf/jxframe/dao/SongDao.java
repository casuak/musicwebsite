package com.glf.jxframe.dao;

import com.glf.jxframe.entity.Song;

import java.util.List;

public interface SongDao {
    List<Song> list();

    // 通过关键词查询相关歌曲
    List<Song> getSongListByKey(String key);
}
