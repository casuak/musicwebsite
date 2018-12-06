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


    </style>
</head>

<body>
<div id="app" v-cloak>
    <div style="font-size:20px;color:deepskyblue;font-family: 微软雅黑;margin-left:30px">
        我的音乐云盘
    </div>
    <Tabs type="card" style="margin-left:2%">
        <Tab-Pane label="歌曲" style="margin-left:20px">

            <i-button >
                <Icon type="md-add"></Icon>
                上传音乐
            </i-button>

            <i-button >
                <Icon type="md-arrow-dropright-circle" @click="playAllMusic"></Icon>
                播放全部
            </i-button>

            <div style="height: calc(100% - 120px);margin-top:20px;">
                <div v-show="showList" style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="400" stripe :columns="columns1" :data="data1" @on-row-dblclick="dblClickPlay" ></i-table>
                    </div>
                </div>
            </div>

        </Tab-Pane>
        <Tab-Pane label="正在上传">

            <div style="text-align:center;font-size:30px;font-family: 楷体">
                暂无正在上传歌曲
            </div>

        </Tab-Pane>
    </Tabs>
</div>

<%@include file="/WEB-INF/views/include/blankScript.jsp" %>

<script>
    var app = new Vue
    (
        {
            el: '#app',

            data : {
                showList:true,
                columns1: [
                    {
                        title: '音乐',
                        key: 'name'
                    },
                    {
                        title: '歌手',
                        key: 'singer'
                    },
                    {
                        title: '专辑',
                        key: 'album'
                    },
                    {
                        title:'格式',
                        key: 'style'
                    },
                    {
                        title:'大小',
                        key:'size'
                    }
                ],
                data1: [
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    },
                    {
                        name: '心墙',
                        singer: '郭静',
                        album: '致纯静',
                        style: 'MP3',
                        size:'8.7MB'
                    }
                ]
            },
            methods: {
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