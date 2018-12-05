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

        .ivu-tabs-content {
            height: calc(100% - 52px);
        }
    </style>
</head>
<body>
<div id="app" v-cloak>
    <div style="height: 50px;margin-top: 40px;margin-left: 40px;margin-right: 40px;">
        <i-input size="large" icon="ios-search" v-model="searchKey"
                 placeHolder="搜索音乐、歌手、歌词、用户"
                 @on-click="search" @on-enter="search"></i-input>
    </div>
    <div style="height: calc(100% - 120px);margin-left: 40px;margin-top: 20px;margin-right: 40px;">
        <row v-show="!showList" style="height: 100%;">
            <i-col span="11">
                <div span="12" class="subTitle">热门搜索</div>
                <div>
                    <i-button style="margin: 3px 5px;" v-for="item in searchPopular" @click="clickSearchPopular">
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
                            <i-table stripe :columns="tables.song.columns" :data="tables.song.data"></i-table>
                        </div>
                    </div>
                </tab-pane>
                <tab-pane label="歌手" :name="tabNames[1]" style="height: 100%;">
                    <div class="scroll-bar" style="height: 100%;overflow-y: scroll;">
                        <div style="margin-right: 31px;">
                            <i-table stripe :columns="tables.author.columns" :data="tables.author.data"></i-table>
                        </div>
                    </div>
                </tab-pane>
            </tabs>
        </div>
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
            searchPopular: ['起风了', '朱正廷', 'Alan Walker新歌', 'RADWIMPs', '陈绮贞新歌', '国风美少年', '艾热新歌', 'John J', '郭顶山形瑞秋合作新曲'],
            // 搜索历史
            searchHistory: [],
            // 搜索关键词
            searchKey: '',
            // 显示歌曲列表还是显示热门搜索
            showList: false,
            // 所有tabpane的name
            tabNames: ['song', 'author'],
            // 当前在哪个tab
            currentTab: '',
            // table数据
            tables: {
                song: {
                    columns: [
                        {
                            title: '歌曲名称',
                            key: 'name'
                        },
                        {
                            title: '专辑名称',
                            key: 'album'
                        },
                        {
                            title: '歌手',
                            key: 'singer'
                        },
                        {
                            title: '时长',
                            key: 'time'
                        }
                    ],
                    data: [
                        {
                            name: 'All this time',
                            album: 'Waking up',
                            singer: 'OneRepublic',
                            time: '4:05'
                        },
                        {
                            name: 'A Change of Heart',
                            album: 'I Like it When You Sleep,For You Are So Beautiful Yet So Unaware of It',
                            singer: 'The 1975',
                            time: '4:35'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '夜的第七章',
                            album: '依然范特西',
                            singer: '周杰伦',
                            time: '3:49'
                        },
                        {
                            name: '夜的第七章',
                            album: '依然范特西',
                            singer: '周杰伦',
                            time: '3:49'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: '将军',
                            album: '七里香',
                            singer: '周杰伦',
                            time: '3:22'
                        },
                        {
                            name: 'A Change of Heart',
                            album: 'I Like it When You Sleep,For You Are So Beautiful Yet So Unaware of It',
                            singer: 'The 1975',
                            time: '4:35'
                        }
                    ]
                },
                author: {
                    columns: [],
                    data: []
                }
            },
        },
        watch: {
            searchKey: function (newVal, oldVal) {
                if (newVal.length == 0) {
                    this.search();
                }
            }
        },
        methods: {
            clickSearchPopular: function (event) {
                this.searchKey = event.srcElement.innerText;
                this.search();
            }
            ,
            search: function () {
                if (this.searchKey.length == 0) {
                    this.showList = false;
                }
                else {
                    this.showList = true;
                }
                var url = "/content/search/list";
                var data = {
                    key: this.searchKey
                };
                $.post(url, data, function (d) {
                    console.log(d);
                })
            }
        },
        mounted: function () {
            this.currentTab = this.tabNames[0];
        }
    })
</script>
</body>
</html>