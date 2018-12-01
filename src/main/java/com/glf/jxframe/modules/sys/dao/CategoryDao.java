package com.glf.jxframe.modules.sys.dao;

import com.glf.jxframe.modules.sys.entity.Category;

import java.util.List;

public interface CategoryDao {
    public int add(Category category);

    public void delete(int id);

    public Category get(int id);

    public int update(Category category);

    public List<Category> list();

    public int count();
}
