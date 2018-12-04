<%@ page contentType="text/html;charset=UTF-8" %>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/static/iview/styles/iview.css"/>

<style>
    [v-cloak] {
        display: none;
    }

    body {
        background: rgb(245, 247, 249);
    }

    html{
        overflow-y: hidden;
    }

    /* 以下是滚动轴样式 */
    .scroll-bar::-webkit-scrollbar { /*滚动条整体样式*/
        width: 10px; /*高宽分别对应横竖滚动条的尺寸*/
        height: 1px;
    }

    .scroll-bar::-webkit-scrollbar-thumb { /*滚动条里面小方块*/
        border-radius: 10px;
        -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
        background: #535353;
    }

    .scroll-bar::-webkit-scrollbar-track { /*滚动条里面轨道*/
        -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        background: #EDEDED;
    }
    /* 以上是滚动轴样式 */

</style>