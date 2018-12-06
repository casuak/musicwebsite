<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <style>
        #app {

            height: 100%;
        }

        .ivu-table{
            height:1000px;
        }
        .ivu-table-header{
            display: none;
        }
    </style>
</head>
<body>
<div id="app" vcloak>
    <i-button type="primary" @click="modal1 = true">Display dialog</i-button>
    <modal
        v-model="model1"
        title="Common Modal dialog box title"
        @on-ok="ok"
        @on-cancel="cancel">
        <p>content1</p>
        <p>content2</p>
        <p>content3</p>
    </modal>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue(
        {
            dl: '#app',
        }
    )
</script>
</body>
</html>
