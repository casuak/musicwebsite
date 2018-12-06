<!DOCTYPE html>
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
    <style>
        #app {
            height: 100%;
        }
        .ivu-table-header{
            display:none;
        }

    </style>
</head>
<body>
<div id="app" v-cloak>
    <div style="margin-left:40px">
        我的收藏
    </div>
    <Tabs  style="margin-left:40px">

        <Tab-Pane label="专辑" icon="ios-albums">
            <div style="font-size: large">
                收藏的专辑
            </div>
            <div style="height: calc(100% - 120px);margin-top:20px;">
                <div style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="400" stripe :columns="columns1" :data="data1"  ></i-table>
                    </div>
                </div>
            </div>

        </Tab-Pane>

        <Tab-Pane label="歌手" icon="ios-man">
            <div style="font-size: large">
                收藏的歌手
            </div>
            <div style="height: calc(100% - 120px);margin-top:20px;">
                <div style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="400" stripe :columns="columns2" :data="data2"  ></i-table>
                    </div>
                </div>
            </div>

        </Tab-Pane>
        <Tab-Pane label="视频" icon="ios-videocam">
            <div style="font-size: large">
                收藏的视频
            </div>
            <div style="height: calc(100% - 120px);margin-top:20px;">
                <div style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="400" stripe :columns="columns2" :data="data2"  ></i-table>
                    </div>
                </div>
            </div>

        </Tab-Pane>
    </Tabs>
</div>
<script>
    new Vue({
        el: '#app',
        data: {
            visible: false,
            columns1:[
                {
                    title:'专辑名称',
                    key:'albumName'
                },
                {
                    title:'歌手',
                    key:'singer'
                },
                {
                    title:'歌曲数目',
                    key:'number'
                }
            ],
            data1:[
                {
                    albumName:'丑奴儿',
                    singer:'草东没有派对',
                    number:'12'
                },
                {
                    albumName:'丑奴儿',
                    singer:'草东没有派对',
                    number:'12'
                },
                {
                    albumName:'丑奴儿',
                    singer:'草东没有派对',
                    number:'12'
                },
                {
                    albumName:'丑奴儿',
                    singer:'草东没有派对',
                    number:'12'
                },
                {
                    albumName:'丑奴儿',
                    singer:'草东没有派对',
                    number:'12'
                },
                {
                    albumName:'丑奴儿',
                    singer:'草东没有派对',
                    number:'12'
                }
            ],
            columns2:[
                {
                    title:'歌手',
                    key:'singer'
                },
                {
                    title:'专辑',
                    key:'album'
                },
                {
                    title:"MV",
                    key:'mv'
                }
            ],
            data2:[
                {
                    singer:'梁博',
                    album:'专辑：9',
                    mv:'MV：8'
                }
            ]
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