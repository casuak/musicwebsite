package com.glf.jxframe.modules.sys.service;

import com.glf.jxframe.modules.sys.dao.CategoryDao;
import com.glf.jxframe.modules.sys.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    public List<Category> list() {
        return categoryDao.list();
    }
}
