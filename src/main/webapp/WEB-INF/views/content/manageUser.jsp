<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <style>
        .el-checkbox__inner {
            margin-left: 4px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<div id="app" class="scroll-bar" v-cloak style="padding: 30px;height: 100%;">
    <el-button type="primary" size="small">添加用户</el-button>
    <el-button type="danger" size="small">批量删除</el-button>
    <el-form :inline="true" style="float: right;">
        <el-form-item>
            <el-input size="small" placeholder="搜索用户名" v-model="table_sysUser.page.searchKey"></el-input>
        </el-form-item>
        <el-form-item>
            <el-button type="primary" size="small">搜索</el-button>
        </el-form-item>
    </el-form>
    <el-table v-loading="table_sysUser.loading" :data="table_sysUser.data" border stripe style=";margin-top: 30px;" size="small">
        <el-table-column align="center" type="selection"></el-table-column>
        <el-table-column align="center" label="序号" width="48">
            <template slot-scope="scope">
                {{ scope.$index + 1 + table_sysUser.page.pageStart() }}
            </template>
        </el-table-column>
        <el-table-column align="center" prop="id" label="用户id"></el-table-column>
        <el-table-column align="center" prop="userName" label="用户名"></el-table-column>
        <el-table-column align="center" prop="password" label="密码"></el-table-column>
        <el-table-column align="center" label="操作" width="200">
            <template slot-scope="scope">
                <el-button type="danger" size="small">删除</el-button>
                <el-button type="success" size="small">编辑</el-button>
            </template>
        </el-table-column>
    </el-table>
    <el-pagination style="margin-top: 20px;float: right;"
                   layout="total, sizes, prev, pager, next, jumper"
                   @size-change="table_sysUser.update(app)"
                   @current-change="table_sysUser.update(app)"
                   :current-page.sync="table_sysUser.page.currentPage"
                   :page-sizes="table_sysUser.page.pageSizes"
                   :page-size.sync="table_sysUser.page.pageSize"
                   :total="table_sysUser.page.total">
    </el-pagination>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            table_sysUser: {
                data: [],
                loading: false,
                page: {
                    currentPage: 1,
                    pageSizes: [5, 10, 15, 20],
                    pageSize: 5,
                    total: 0,
                    searchKey: '',
                    pageStart: function(){
                        return (this.currentPage - 1) * this.pageSize;
                    }
                },
                update: function(app){
                    var url = "/content/manageUser/list";
                    var data = {
                        currentPage: this.page.currentPage,
                        pageSize: this.page.pageSize,
                        searchKey: this.searchKey
                    };
                    this.loading = true;
                    ajaxPostJSON(url, data, function (d) {
                        app.table_sysUser.data = d.list;
                        app.table_sysUser.page.total = d.total;
                        app.table_sysUser.loading = false;
                    })
                }
            }
        },
        methods: {
            // 更新user表的数据
            updateTableSysUser: function () {
                var url = "/content/manageUser/getAllSysUser";
                ajaxGet(url, null, function (d) {
                    app.table_sysUser.data = d;
                })
            },
            // 根据用户id删除用户
            deleteUserByIds: function (idList) {
                console.log(idList);
            }
        },
        mounted: function () {
            this.table_sysUser.update(this);
        }
    })
</script>
</body>
</html>