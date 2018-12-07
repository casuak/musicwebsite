package com.glf.jxframe.dao;

import com.glf.jxframe.entity.Singer;

import java.util.List;

public interface AuthorDao {
    List<Singer> list();

    List<Singer> getAuthorListByKey(String key);
}
