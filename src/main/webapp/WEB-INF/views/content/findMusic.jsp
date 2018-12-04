<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
</head>
<style>
    .left {
        display: inline;
        width: 200px;
    }

    .right {
        display: inline;
    }
</style>
<body>
<div id="app" v-cloak>
    <div class="left">left</div>
    <div class="right">right</div>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app'
    })
</script>
</body>
</html>