<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <style>
        iframe {
            border: 0;
            width: 100%;
            height: 100%;
        }

        .top {
            width: 100%;
            height: 60px;
            background: rgb(81, 90, 110);
        }

        .top .title {
            color: white;
            line-height: 60px;
            font-size: 18px;
            margin-left: 40px;
        }

        .middle {
            height: calc(100% - 60px);
        }

        .middle .left {
            width: 240px;
            height: 100%;
            background-color: white;
            overflow-y: auto;
            float: left;
        }

        .middle .right {
            width: calc(100% - 240px);
            height: 100%;
            margin-left: 240px;
        }
    </style>
</head>
<body>
<div id="app" v-cloak style="height: 100%">
    <div style="height: 100%">
        <div class="top">
            <div class="title">网易云音乐</div>
        </div>
        <div class="middle">
            <i-Menu :active-name="contentUrl" class="left scroll-bar" theme="light" @on-select="changeContent">
                <Menu-Item name="content/search">
                    <Icon type="ios-navigate"></Icon>
                    搜索
                </Menu-Item>
                <Menu-Item name="content/findMusic">
                    <Icon type="ios-navigate"></Icon>
                    发现音乐
                </Menu-Item>
                <Menu-Group title="我的音乐">
                    <Menu-Item name="content/recentPlay">
                        <Icon type="ios-navigate"></Icon>
                        最近播放
                    </Menu-Item>
                    <Menu-Item name="content/myMusicCloud">
                        <Icon type="ios-navigate"></Icon>
                        我的音乐云盘
                    </Menu-Item>
                    <Menu-Item name="content/myCollection">
                        <Icon type="ios-navigate"></Icon>
                        我的收藏
                    </Menu-Item>
                </Menu-Group>
            </i-Menu>
            <div class="right">
                <iframe :src="contentUrl"></iframe>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            // 与iframe的src绑定
            contentUrl: ''
        },
        watch: {},
        methods: {
            changeContent: function (name) {
                this.contentUrl = name;
            }
        },
        mounted: function () {
            // 设置内容的初始页
            this.changeContent('content/search');
        }
    });
</script>
</body>
</html>
