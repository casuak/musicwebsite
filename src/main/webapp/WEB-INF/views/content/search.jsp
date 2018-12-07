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

        .ivu-table-header {
            display: none;
        }

        .ivu-table td, .ivu-table th {
            border-bottom: 0px;
        }

        .ivu-tabs-content {
            height: calc(100% - 52px);
        }

        .ivu-table-overflowX {
            overflow-x: hidden;
        }

        /*.column-song-name {*/
        /*width: 40%;*/
        /*}*/

        /*.column-song-singer {*/
        /*width: 25%;*/
        /*}*/

        /*.column-song-album {*/
        /*width: 25%;*/
        /*}*/

        /*.column-song-duration {*/
        /*width: 10%;*/
        /*}*/
    </style>
</head>
<body>
<div id="app" v-cloak>
    <div style="height: 50px;margin-top: 20px;margin-left: 40px;margin-right: 40px;">
        <i-input size="large" icon="ios-search" v-model="searchKey"
                 placeHolder="搜索音乐、歌手、歌词、用户"
                 @on-click="search" @on-enter="search"></i-input>
    </div>
    <div style="height: calc(100% - 120px);margin-left: 40px;margin-top: 5px;margin-right: 40px;">
        <row v-show="!showList" style="height: 100%;">
            <i-col span="11">
                <div span="12" class="subTitle">热门搜索</div>
                <div>
                    <i-button style="margin: 3px 5px;" v-for="item in searchPopular" :key="item"
                              @click="clickSearchPopular">
                        {{ item }}
                    </i-button>
                </div>
            </i-col>
            <i-col span="11" offset="2" style="height: 100%;">
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
        <div v-show="showList" style="height: 100%;">
            <tabs :animated="false" v-model="currentTab" style="height: 100%;">
                <tab-pane label="单曲" :name="tabNames[0]" style="height: 100%;">
                    <div class="scroll-bar" style="height: 100%;overflow-y: scroll;">
                        <div style="margin-right: 31px;">
                            <i-table style="width: 100%;" :loading="tables.song.loading" stripe
                                     :columns="tables.song.columns"
                                     :data="tables.song.data" @on-row-dblclick="playSong"></i-table>
                        </div>
                    </div>
                </tab-pane>
                <tab-pane label="歌手" :name="tabNames[1]" style="height: 100%;">
                    <div class="scroll-bar" style="height: 100%;overflow-y: scroll;">
                        <div style="margin-right: 31px;">
                            <i-table style="width: 100%;" :loading="tables.singer.loading" stripe
                                     :columns="tables.singer.columns"
                                     :data="tables.singer.data" @on-row-dblclick="playSong"></i-table>
                        </div>
                    </div>
                </tab-pane>
            </tabs>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            // 热门搜索列表
            searchPopular: ['心跳', '醉赤壁', '王力宏', '陈奕迅', '我们'],
            // 搜索历史
            searchHistory: [],
            // 搜索关键词
            searchKey: '',
            // 显示歌曲列表还是显示热门搜索
            showList: false,
            // 所有tabpane的name
            tabNames: ['song', 'singer'],
            // 当前在哪个tab
            currentTab: '',
            // table数据
            tables: {
                song: {
                    columns: [
                        {
                            title: '歌曲名称',
                            key: 'name',
                            minWidth: 10
                        },
                        {
                            title: '歌手',
                            key: 'singer',
                            minWidth: 10
                        },
                        {
                            title: '专辑名称',
                            key: 'album',
                            minWidth: 10
                        },
                        {
                            title: '时长',
                            key: 'duration',
                            minWidth: 10
                        }
                    ],
                    data: [],
                    loading: false
                },
                singer: {
                    columns: [],
                    data: [],
                    loading: false
                }
            }
        },
        watch: {
            searchKey: function (newVal, oldVal) {
                if (newVal.length == 0) {
                    this.search();
                }
            },
            currentTab: function (newVal, oldVal) {
                this.search();
            }
        },
        methods: {
            clickSearchPopular: function (event) {
                this.searchKey = event.srcElement.innerText;
                this.search();
            },
            search: function () {
                if (this.searchKey.length == 0) {
                    this.showList = false; // 显示历史搜索和热门搜索
                    return;
                }
                else {
                    this.showList = true; // 显示搜索结果
                }
                var url = "/content/search/";
                var data = {
                    key: this.searchKey
                };
                var callback = function () {
                    alert("error");
                };
                switch (this.currentTab) {
                    case this.tabNames[0]:
                        callback = this.callback_getSongList;
                        url += "getSongList";
                        this.tables.song.loading = true;
                        break;
                    case this.tabNames[1]:
                        callback = this.callback_getsingerList;
                        url += "getSingerList";
                        this.tables.singer.loading = true;
                        break;
                }
                $.post(url, data, callback);
            },
            callback_getSongList: function (d) {
                console.log(d);
                for (var i = 0; i < d.length; i++) {
                    if (d[i].albumList.length > 0) {
                        d[i].album = d[i].albumList[0]['name'];
                    }
                    if (d[i].singerList.length > 0) {
                        d[i].singer = d[i].singerList[0].nickName;
                    }
                    for (var j = 1; j < d[i].singerList.length; j++) {
                        d[i].singer += '/' + d[i].singerList[j].nickName;
                    }
                }
                this.tables.song.data = d;
                this.tables.song.loading = false;
            },
            callback_getsingerList: function (d) {
                console.log(d);
                // this.tables.song.data = d;
                for (var i = 0; i < d.length; i++) {
                    if (d[i].albumList.length > 0) {
                        d[i].album = d[i].albumList[0]['name'];
                    }
                    if (d[i].authoList.length > 0) {
                        d[i].singer = d[i].singerList[0].nickName;
                    }
                    for (var j = 1; j < d[i].singerList.length; j++) {
                        d[i].singer += '/' + d[i].singerList[j].nickName;
                    }
                    this.tables.song.data = d;
                    this.table.song.loading = false;
                }

                this.tables.singer.loading = false;
            },
            playSong: function (row, index) {
                window.parent.app.playSong(row.location);
            }
        },
        mounted: function () {
            this.currentTab = this.tabNames[0];
        }
    })
</script>
</body>
</html>