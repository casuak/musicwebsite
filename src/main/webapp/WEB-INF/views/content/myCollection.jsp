<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>iview example</title>
    <%--<link rel="stylesheet" type="text/css" href="http://unpkg.com/iview/dist/styles/iview.css">--%>
    <%--<script type="text/javascript" src="http://vuejs.org/js/vue.min.js"></script>--%>
    <%--<script type="text/javascript" src="http://unpkg.com/iview/dist/iview.min.js"></script>--%>

    <link rel="stylesheet" href="/static/iview/styles/iview.css"/>
    <script src="/static/jquery/jquery-3.3.1.min.js"></script>
    <script src="/static/vue/vue.min.js"></script>
    <script src="/static/iview/iview.min.js"></script>
</head>
<body>
<div id="app">
    <i-table></i-table>3333
</div>
<script>
    new Vue({
        el: '#app',
        data: {
            visible: false
        },
        methods: {
            show: function () {
                this.visible = true;
            }
        }
    })
</script>
</body>
</html>