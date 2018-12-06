package com.glf.jxframe.dao;

import com.glf.jxframe.entity.Author;

import java.util.List;

public interface AuthorDao {
    List<Author> list();

    List<Author> getAuthorListByKey(String key);
}
