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
    <el-button @click="table_sysUser.dialog_add=true" type="primary" size="small">添加用户</el-button>
    <el-button type="danger" size="small">批量删除</el-button>
    <el-form :inline="true" style="float: right;" @submit.native.prevent>
        <el-form-item>
            <el-input v-model="table_sysUser.page.searchKey" size="small" placeholder="搜索用户名"></el-input>
        </el-form-item>
        <el-form-item>
            <el-button @click="table_sysUser.select" type="primary" size="small">搜索</el-button>
        </el-form-item>
    </el-form>
    <el-table v-loading="table_sysUser.loading" :data="table_sysUser.data" border stripe style=";margin-top: 30px;"
              size="small">
        <el-table-column align="center" type="selection"></el-table-column>
        <el-table-column align="center" label="序号" width="48">
            <template slot-scope="scope">
                {{ scope.$index + 1 + table_sysUser.page.pageStart() }}
            </template>
        </el-table-column>
        <el-table-column align="center" prop="id" label="用户id"></el-table-column>
        <el-table-column align="center" prop="userName" label="用户名"></el-table-column>
        <el-table-column align="center" prop="password" label="密码"></el-table-column>
        <el-table-column align="center" prop="formatCreateTime" label="创建时间"></el-table-column>
        <el-table-column align="center" label="操作" width="200">
            <template slot-scope="scope">
                <el-button type="danger" size="small">删除</el-button>
                <el-button type="success" size="small">编辑</el-button>
            </template>
        </el-table-column>
    </el-table>
    <el-pagination style="margin-top: 20px;float: right;"
                   layout="total, sizes, prev, pager, next, jumper"
                   @size-change="table_sysUser.select"
                   @current-change="table_sysUser.select"
                   :current-page.sync="table_sysUser.page.currentPage"
                   :page-sizes="table_sysUser.page.pageSizes"
                   :page-size.sync="table_sysUser.page.pageSize"
                   :total="table_sysUser.page.total">
    </el-pagination>
    <el-dialog :visible.sync="table_sysUser.dialog_add" title="添加用户" width="600px">
        <el-form size="small" label-position="right" label-width="80px" style="width: 500px;">
            <el-form-item label="用户名">
                <el-input v-model="table_sysUser.form_add.userName"></el-input>
            </el-form-item>
            <el-form-item label="密码">
                <el-input v-model="table_sysUser.form_add.password"></el-input>
            </el-form-item>
        </el-form>
        <div slot="footer">
            <el-button size="small" @click="table_sysUser.dialog_add=false">取 消</el-button>
            <el-button type="primary" size="small" @click="table_sysUser.insert">添 加</el-button>
        </div>
    </el-dialog>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            table_sysUser: {
                data: [],
                loading: false,
                dialog_add: false,
                form_add: {
                    userName: '',
                    password: ''
                },
                page: {
                    currentPage: 1,
                    pageSizes: [5, 10, 15, 20],
                    pageSize: 5,
                    total: 0,
                    searchKey: '',
                    pageStart: function () {
                        return (this.currentPage - 1) * this.pageSize;
                    }
                },
                select: function () {
                    var url = "/content/manageUser/sysUser/select";
                    var data = {
                        currentPage: app.table_sysUser.page.currentPage,
                        pageSize: app.table_sysUser.page.pageSize,
                        searchKey: app.table_sysUser.page.searchKey
                    };
                    this.loading = true;
                    ajaxPostJSON(url, data, function (d) {
                        app.table_sysUser.data = d.list;
                        app.table_sysUser.page.total = d.total;
                        app.table_sysUser.loading = false;
                        console.log(d);
                    })
                },
                insert: function () {
                    var url = "/content/manageUser/sysUser/insert";
                    var data = {
                        userName: app.table_sysUser.form_add.userName,
                        password: app.table_sysUser.form_add.password
                    };
                    ajaxPostJSON(url, data, function (d) {
                        switch (d.code) {
                            case 1:
                                // 新建用户成功
                                app.table_sysUser.dialog_add = false;
                                app.$message({
                                    message: '添加用户成功',
                                    type: 'success'
                                });
                                app.table_sysUser.select();
                                break;
                            case 2:
                                // 用户名或密码不能为空
                                app.$message({
                                    message: '用户名或密码不能为空',
                                    type: 'error'
                                });
                                break;
                            case 3:
                                // 用户名已被注册
                                app.$message({
                                    message: '用户名已被注册',
                                    type: 'error'
                                });
                                break;
                        }
                    })
                },
                update: function () {

                },
                delete: function () {

                }
            }
        }
    });
    $(document).ready(function () {
        app.table_sysUser.select();
    })
</script>
</body>
</html>