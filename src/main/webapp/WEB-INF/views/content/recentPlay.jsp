<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
</head>
最近播放
<body>
<div id="app" v-cloak>

    <Tabs type="card">
        <Tab-Pane label="歌曲100">
            <i-button type="primary">
                <Icon type="md-arrow-dropright-circle"></Icon>
                播放全部
            </i-button>

            <i-button type="primary">
                <Icon type="ios-trash" /></Icon>
                全部清空
            </i-button>
            <Divider></Divider>
            <i-table stripe :colums="columns1" :data="data1"></i-table>
            <script>

            </script>
        </Tab-Pane>
        <Tab-Pane label="节目0">
            <i-button type="primary">
                <Icon type="md-arrow-dropright-circle"></Icon>
                播放全部
            </i-button>
            <i-button type="primary">
                <Icon type="ios-trash" /></Icon>
                全部清空
            </i-button>
            <Divider></Divider>
        </Tab-Pane>
    </Tabs>


</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app'

    })
</script>
</body>
</html>