<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <style>
        #app {
            height: 100%;
        }

        /* 热门搜索和搜索历史样式 */
        .subTitle {
            font-size: 18px;
            border-bottom: 1px solid gray;
            padding-bottom: 6px;
            margin-bottom: 10px;
        }

        .ivu-table-header{
            display: none;
        }
    </style>
</head>
<body>
<div id="app" v-cloak>
    <div style="height: 50px;margin-top: 40px;margin-left: 40px;margin-right: 40px;">
        <i-input size="large" suffix="ios-search" v-model="searchKey" placeHolder="搜索音乐、歌手、歌词、用户"></i-input>
    </div>
    <div style="height: calc(100% - 120px);margin-left: 40px;margin-top: 20px;">
        <row v-show="!showList">
            <i-col span="11">
                <div span="12" class="subTitle">热门搜索</div>
                <div>
                    <i-button style="margin: 3px 5px;" v-for="item in searchPopular" @click="clickSearchPopular">
                        {{ item }}
                    </i-button>
                </div>
            </i-col>
            <i-col span="2">&nbsp;</i-col>
            <i-col span="11">
                <div class="subTitle">
                    搜索历史
                    <Icon style="float: right;top: 5px;position: relative;font-size: 23px;" type="ios-trash-outline"/>
                </div>
                <div class="scroll-bar" style="height: 60%;">
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                    <div>列表</div>
                </div>
            </i-col>
        </row>
        <div v-show="showList" class="scroll-bar" style="height: 100%;overflow-y: scroll;">
            <div style="margin-right: 31px;border: 1px solid rgb(245, 247, 249);">
                <i-table stripe :columns="musicList.columns" :data="musicList.data"></i-table>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            // 热门搜索列表
            searchPopular: [
                '起风了', '朱正廷', 'Alan Walker新歌', 'RADWIMPs', '陈绮贞新歌', '国风美少年', '艾热新歌', 'John J', '郭顶山形瑞秋合作新曲'
            ],
            // 搜索历史
            searchHistory: [],
            // 搜索关键词
            searchKey: '',
            // 显示歌曲列表还是显示热门搜索
            showList: true,
            // 歌曲列表table
            musicList: {
                columns: [
                    {
                        title: ' ',
                        key: 'name'
                    },
                    {
                        title: ' ',
                        key: 'age'
                    },
                    {
                        title: ' ',
                        key: 'address'
                    }
                ],
                data: [
                    {
                        name: 'John Brown',
                        age: 18,
                        address: 'New York No. 1 Lake Park',
                        date: '2016-10-03'
                    },
                    {
                        name: 'John Brown',
                        age: 18,
                        address: 'New York No. 1 Lake Park',
                        date: '2016-10-03'
                    },
                    {
                        name: 'Jim Green',
                        age: 24,
                        address: 'London No. 1 Lake Park',
                        date: '2016-10-01'
                    },
                    {
                        name: 'Joe Black',
                        age: 30,
                        address: 'Sydney No. 1 Lake Park',
                        date: '2016-10-02'
                    },
                    {
                        name: 'Jon Snow',
                        age: 26,
                        address: 'Ottawa No. 2 Lake Park',
                        date: '2016-10-04'
                    },
                    {
                        name: 'John Brown',
                        age: 18,
                        address: 'New York No. 1 Lake Park',
                        date: '2016-10-03'
                    },
                    {
                        name: 'John Brown',
                        age: 18,
                        address: 'New York No. 1 Lake Park',
                        date: '2016-10-03'
                    },
                    {
                        name: 'Jim Green',
                        age: 24,
                        address: 'London No. 1 Lake Park',
                        date: '2016-10-01'
                    },
                    {
                        name: 'Joe Black',
                        age: 30,
                        address: 'Sydney No. 1 Lake Park',
                        date: '2016-10-02'
                    },
                    {
                        name: 'Jon Snow',
                        age: 26,
                        address: 'Ottawa No. 2 Lake Park',
                        date: '2016-10-04'
                    },
                    {
                        name: 'John Brown',
                        age: 18,
                        address: 'New York No. 1 Lake Park',
                        date: '2016-10-03'
                    },
                    {
                        name: 'John Brown',
                        age: 18,
                        address: 'New York No. 1 Lake Park',
                        date: '2016-10-03'
                    },
                    {
                        name: 'Jim Green',
                        age: 24,
                        address: 'London No. 1 Lake Park',
                        date: '2016-10-01'
                    },
                    {
                        name: 'Joe Black',
                        age: 30,
                        address: 'Sydney No. 1 Lake Park',
                        date: '2016-10-02'
                    },
                    {
                        name: 'Jon Snow',
                        age: 26,
                        address: 'Ottawa No. 2 Lake Park',
                        date: '2016-10-04'
                    }
                ]
            }
        },
        watch: {
            searchKey: function (newVal, oldVal) {
                console.log(newVal.length);
                if (newVal.length == 0) {
                    this.showList = false;
                }
                else {
                    this.showList = true;
                }
            }
        },
        methods: {
            clickSearchPopular: function (event) {
                this.searchKey = event.srcElement.innerText;
            },
            search: function () {
                // TODO: search music
            }
        }
    })
</script>
</body>
</html>