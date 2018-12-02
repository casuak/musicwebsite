<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <link rel="stylesheet" href="/static/custom/css/modules/music/frame/frame.css"/>
</head>
<body>
<div id="app" v-cloak>
    <div class="layout">
        <Layout>
            <i-Header>
                <i-Menu mode="horizontal" theme="dark" active-name="1">
                    <%--<div class="layout-nav">--%>
                        <%--<Menu-Item name="1">--%>
                            <%--<Icon type="ios-navigate"></Icon>--%>
                            <%--Item 1--%>
                        <%--</Menu-Item>--%>
                        <%--<Menu-Item name="2">--%>
                            <%--<Icon type="ios-keypad"></Icon>--%>
                            <%--Item 2--%>
                        <%--</Menu-Item>--%>
                        <%--<Menu-Item name="3">--%>
                            <%--<Icon type="ios-analytics"></Icon>--%>
                            <%--Item 3--%>
                        <%--</Menu-Item>--%>
                        <%--<Menu-Item name="4">--%>
                            <%--<Icon type="ios-paper"></Icon>--%>
                            <%--Item 4--%>
                        <%--</Menu-Item>--%>
                    <%--</div>--%>
                <%--</i-Menu>--%>
            </i-Header>
            <Layout>
                <Sider hide-trigger class="sider">
                    <i-Menu active-name="1" theme="light" width="auto" @on-select="changeContent">
                        <Menu-Item name="1">
                            <Icon type="ios-navigate"></Icon>
                            搜索
                        </Menu-Item>
                        <Menu-Item name="2">
                            <Icon type="ios-navigate"></Icon>
                            发现音乐
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
<script src="/static/custom/js/modules/music/frame/frame.js"></script>
</body>
</html>
