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
    </style>
</head>

<body>
<div id="app" v-cloak>

    <div style="margin-left:40px">最近播放</div>
    <Tabs type="card" style="margin-left:40px">
        <Tab-Pane label="歌曲100">
            <i-button >
                <Icon type="md-arrow-dropright-circle" @click="playAllMusic"></Icon>
                播放全部
            </i-button>

            <i-button >
                <Icon type="ios-trash" /></Icon>
                全部清空
            </i-button>

            <div style="height: calc(100% - 120px);margin-top:20px;">
                <div v-show="showList" style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="400" stripe :columns="columns1" :data="data1" @on-row-dblclick="dblClickPlay" ></i-table>
                    </div>
                </div>
            </div>




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
    var app = new Vue
    (
        {
            el: '#app',

            data : {
                showList:true,
                columns1: [
                    {
                        title: '歌曲名称',
                        key: 'name'
                    },
                    {
                        title: '专辑名称',
                        key: 'album'
                    },
                    {
                        title: '歌手',
                        key: 'singer'
                    },
                    {
                        title:'时长',
                        key: 'time'
                    }
                ],
                data1: [
                    {
                        name: 'All this time',
                        album: 'Waking up',
                        singer: 'OneRepublic',
                        time: '4:05'
                    },
                    {
                        name: 'A Change of Heart',
                        album: 'I Like it When You Sleep,For You Are So Beautiful Yet So Unaware of It',
                        singer: 'The 1975',
                        time: '4:35'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '夜的第七章',
                        album: '依然范特西',
                        singer: '周杰伦',
                        time: '3:49'
                    },
                    {
                        name: '夜的第七章',
                        album: '依然范特西',
                        singer: '周杰伦',
                        time: '3:49'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: '将军',
                        album: '七里香',
                        singer: '周杰伦',
                        time: '3:22'
                    },
                    {
                        name: 'A Change of Heart',
                        album: 'I Like it When You Sleep,For You Are So Beautiful Yet So Unaware of It',
                        singer: 'The 1975',
                        time: '4:35'
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