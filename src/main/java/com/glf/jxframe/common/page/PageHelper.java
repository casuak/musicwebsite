package com.glf.jxframe.common.page;

public class PageHelper {

    private int currentPage; // 当前页位置

    private int pageSize; // 每页大小

    private String searchKey; // 搜索关键词

    private int pageStart; // 当前页开始的位置

    public int getPageStart(){
        return (currentPage - 1) * pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getSearchKey() {
        return searchKey;
    }

    public void setSearchKey(String searchKey) {
        this.searchKey = searchKey;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
