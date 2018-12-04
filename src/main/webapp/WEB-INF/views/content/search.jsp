<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <style>
        #app {
            padding: 40px 40px;
            height: 99%;
        }

        /* 热门搜索和搜索历史样式 */
        .subTitle {
            font-size: 18px;
            border-bottom: 1px solid gray;
            padding-bottom: 6px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div id="app" v-cloak class="scroll-bar">
    <i-input style="padding-left: 10px;" size="large" suffix="ios-search" :value="searchKey" placeHolder="搜索音乐、歌手、歌词、用户"></i-input>
    <row style="margin: 30px 10px;">
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
            <div>
                列表
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </i-col>
    </row>
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
            searchKey: ''
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