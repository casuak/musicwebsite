<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <style>
        /* 边栏 */
        .sider {
            background: white;
        }

        /* 右边内容 */
        .right {
            padding: 0;
        }

        iframe {
            border: 0px;
        }

        .title{
            color: white;
        }
    </style>
</head>
<body>
<div id="app" v-cloak>
    <div class="layout">
        <Layout>
            <i-Header>
                <i-Menu mode="horizontal" theme="dark" active-name="1">
                    <div class="title">网易云音乐</div>
                </i-Menu>
            </i-Header>
            <Layout>
                <Sider hide-trigger class="sider">
                    <i-Menu theme="light" width="auto" @on-select="changeContent">
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
                </Sider>
                <Layout class="right">
                    <iframe :src="contentUrl"></iframe>
                </Layout>
            </Layout>
        </Layout>
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
