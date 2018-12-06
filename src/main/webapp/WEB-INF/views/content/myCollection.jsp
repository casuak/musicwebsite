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

        #app{
            height:100%;
        }

        .ivu-table{
            height:1000px;
        }

    </style>
</head>

<body>

<div id="app">
    <div style="font-size:16px;color:black;font-family: 微软雅黑;margin-left:30px">
        我的收藏
    </div>


    <Tabs value="name1">
        <Tab-Pane label="专辑" name="name1">

            <div style="height: calc(100% - 120px);margin-top:20px;margin-left:3%;">
                <div v-show="showList" style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="500" stripe :columns="columns1" :data="data1" @on-row-dblclick="dblClickPlay" ></i-table>
                    </div>
                </div>
            </div>


        </Tab-Pane>
        <Tab-Pane label="歌手" name="name2">

            <div style="height: calc(100% - 120px);margin-top:20px;margin-left:3%;">
                <div v-show="showList2" style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="500" stripe :columns="columns2" :data="data2" @on-row-dblclick="dblClickPlay" ></i-table>
                    </div>
                </div>
            </div>

        </Tab-Pane>
        <Tab-Pane label="专栏" name="name3">

            <div style="text-align:center;font-size:30px;font-family: 楷体;">
                暂无收藏专栏
            </div>

        </Tab-Pane>
    </Tabs>


</div>


<script>
    new Vue({
        el: '#app',
        data: {
            showList:true,
            showList2:true,
            columns1: [
                {
                    title: '专辑',
                    key: 'album'
                },
                {
                    title: '歌手',
                    key: 'singer'
                },
                {
                    title: '曲目',
                    key: 'number'
                }
            ],
            columns2: [
                {
                    title: '歌手',
                    key: 'singer'
                },
                {
                    title: '专辑',
                    key: 'album'
                },
                {
                    title: 'MV数',
                    key: 'number'
                }
            ],
            data1:[
                {
                    album: '我的音乐专辑'
                },
                {
                    album:'伟大的渺小',
                    singer:'林俊杰',
                    number:'11首'
                },
                {
                    album:'只爱陌生人',
                    singer:'王菲',
                    number:'12首'
                },
                {
                    album:'伟大的渺小',
                    singer:'林俊杰',
                    number:'11首'
                },
                {
                    album:'只爱陌生人',
                    singer:'王菲',
                    number:'12首'
                },
                {
                    album:'伟大的渺小',
                    singer:'林俊杰',
                    number:'11首'
                },
                {
                    album:'只爱陌生人',
                    singer:'王菲',
                    number:'12首'
                },
                {
                    album:'伟大的渺小',
                    singer:'林俊杰',
                    number:'11首'
                },
                {
                    album:'只爱陌生人',
                    singer:'王菲',
                    number:'12首'
                },
                {
                    album:'伟大的渺小',
                    singer:'林俊杰',
                    number:'11首'
                },
                {
                    album:'只爱陌生人',
                    singer:'王菲',
                    number:'12首'
                },
                {
                    album:'伟大的渺小',
                    singer:'林俊杰',
                    number:'11首'
                },
                {
                    album:'只爱陌生人',
                    singer:'王菲',
                    number:'12首'
                },
                {
                    album:'伟大的渺小',
                    singer:'林俊杰',
                    number:'11首'
                },
                {
                    album:'只爱陌生人',
                    singer:'王菲',
                    number:'12首'
                }
            ],
            data2:[
                {
                    singer:'AC/DC',
                    album:'专辑：56',
                    number:'MV：10'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                },
                {
                    singer:'周杰伦',
                    album:'专辑：33',
                    number:'MV：8'
                }
            ]
        },
        methods: {
            show: function () {
                this.visible = true;
            },

            dblClickPlay: function (){
                // TODO: play music
            },
            playAllMusic: function(){

            }
        }
    })
</script>
</body>
</html>