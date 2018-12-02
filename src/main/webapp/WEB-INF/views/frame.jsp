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
            padding: 0 24px 24px;
        }

        iframe {
            border: 0px;
        }
    </style>
</head>
<body>
<div id="app" v-cloak>
    <div class="layout">
        <Layout>
            <i-Header>
                <i-Menu mode="horizontal" theme="dark" active-name="1"></i-Menu>
            </i-Header>
            <Layout>
                <Sider hide-trigger class="sider">
                    <i-Menu theme="light" width="auto" @on-select="changeContent">
                        <Menu-Item v-for="item in functions" :name="item.url" :key="item.url">
                            <Icon :type="item.iconType"></Icon>
                            {{ item.text }}
                        </Menu-Item>
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
            contentUrl: '',
            // 左功能栏
            functions: [
                {
                    url: 'content/search',
                    iconType: 'ios-navigate',
                    text: '搜索'
                },
                {
                    url: 'content/findMusic',
                    iconType: 'ios-navigate',
                    text: '发现音乐'
                }
            ]
        },
        watch: {},
        methods: {
            changeContent: function (name) {
                this.contentUrl = name;
            }
        },
        mounted: function () {
            this.contentUrl = this.functions[0].url
        }
    });
</script>
</body>
</html>
