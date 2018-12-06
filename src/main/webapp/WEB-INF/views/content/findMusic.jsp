<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
</head>
<style>
    #app {
        padding: 40px 40px;
        height: 100%;
    }

    .find2 {
        font-family: 微软雅黑;
        font-size: 19px;
        color: palegreen;
        margin-left: 1%;
        position: absolute;
        top: 2px;

    }

    .photo {
        margin-left: 15%;
    }

    .new_music {
        width: 1080px;
        margin-left: 5%;
        top: 280px;
        position: absolute;
    }

    .five {
        display: block;
        height: 190px;
        width: 190px;
        float: left;
    }

    .ivu-tabs-content{
        height:100%;
    }
</style>
<body>
<div id="app" v-cloak>
    <div class="find2"> 发现音乐</div>
    <Tabs value="name1" style="height:100%">
        <Tab-Pane label="个性推荐" name="name1" style="height:100%">
            <div style="position: relative;font-size: 23px; margin-left:1%" class="推荐歌单">
                推荐歌曲歌单
            </div>

            <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                    </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                    </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                    </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 乾坤未定，你我22皆是黑马 </div>
                    </span>

            </div>

            <div style="top:250px;font-size:23px;margin-left:1%;position:absolute">
                最新音乐
            </div>

            <div style="height: calc(100% - 120px);margin-top:180px;">
                <div v-show="showList" style="height:100%;">
                    <div style="border:1px solid rgb(245,247,249);">
                        <i-table size=small height="400" stripe :columns="columns2" :data="data2" @on-row-dblclick="dblClickPlay" ></i-table>
                    </div>
                </div>
            </div>




        </Tab-Pane>
        <Tab-Pane label="歌单" name="name2" style="height:100%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <Tabs size="small" type="line">
                <Tab-Pane label="华语">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 情书密码，烟火人生 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 冬日民谣 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 我们抗拒热闹，却讨厌冷清 </div>
                    </span>
                    </div>

                    <div class="photo" style="height:240px">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 情书密码，烟火人生 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 冬日民谣 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 我们抗拒热闹，却讨厌冷清 </div>
                    </span>
                    </div>

                </Tab-Pane>
                <Tab-Pane label="流行">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 回忆伤人无声 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 华语百首经典 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 可爱的姑娘啊 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="摇滚">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 午夜拥抱计划 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 被掩盖的，花朵之名 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 英伦摇滚50支 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="民谣">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 初时不知曲中意 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 冬日民谣 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 100种人生的态度 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="电子">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 糖果电音 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 暗黑领域 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 玩游戏听的BGM </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="轻音乐">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 纯音-古色古香 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 享受阳光的宠爱 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 作业音萃 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="ACG">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 指尖律动的音符 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 樱色物语 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 绘画专用-日文 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="影视原声">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 精品歌单 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 国漫OST </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 泰剧OST </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 台湾偶像剧 </div>
                    </span>
                    </div>
                </Tab-Pane>
            </Tabs>

        </Tab-Pane>
        <Tab-Pane label="最新音乐" name="name3">

            <Tabs type="card">
                <Tab-Pane label="新歌速递">

                    <div style="height: calc(100% - 120px);margin-top:20px;">
                        <div v-show="showList2" style="height:100%;">
                            <div style="margin-left: 31px;border:1px solid rgb(245,247,249);">
                                <i-table size=small height="400" stripe :columns="columns1" :data="data1" @on-row-dblclick="dblClickPlay" ></i-table>
                            </div>
                        </div>
                    </div>

                </Tab-Pane>
                <Tab-Pane label="新碟上架">
                    <div style="font-size:18px;font-family: 微软雅黑;">
                        本周新碟
                    </div>
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> NEXT TO YOU </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 楼兰 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 此刻明白 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 爱的重量 </div>
                    </span>
                    </div>
                </Tab-Pane>
            </Tabs>

        </Tab-Pane>
        <Tab-Pane label="歌手" name="name4">

            <Tabs size="small" typr="line">
                <Tab-Pane label="全部">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 薛之谦 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 花粥 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 陈奕迅 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 林俊杰 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="男歌手">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 薛之谦 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 陈奕迅 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 林俊杰 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 林宥嘉 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="女歌手">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 花粥 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> G.E.M.邓紫棋 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 王贰浪 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 陈粒 </div>
                    </span>
                    </div>
                </Tab-Pane>
                <Tab-Pane label="乐队组合">
                    <div class="photo">
                    <span class="five">
                        <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> 房东的猫 </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> Coldplay </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> S.H.E </div>
                    </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="five">
                         <div>
                            <img style="top:80px;height:160px;width:160px" src=""/></div>
                        <div style="font-size:15px"> Maroon 5 </div>
                    </span>
                    </div>
                </Tab-Pane>
            </Tabs>



        </Tab-Pane>
    </Tabs>

</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app',

        data : {
            showList: true,
            showList2:true,
            columns1: [
                {
                    title: '歌曲',
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
                    title: '时长',
                    key: 'time'
                }
            ],
            data1: [
                {
                    name: '西域公主',
                    singer: '艾福杰尼',
                    album: '楼兰',
                    time: '03：33'
                },
                {
                    name: '爱的重量',
                    singer: '王心凌',
                    album: '爱的重量',
                    time: '03：34'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                }, {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                }, {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                }, {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03：10'
                }
            ],
            columns2:[
                {
                    title: '歌曲',
                    key: 'name'
                },
                {
                    title: '歌手',
                    key: 'singer'
                }
            ],
            data2:[
                {
                    name:'Bad Habit',
                    singer:'艾热'
                },
                {
                    name:'小船',
                    singer:'陈绮贞'
                },
                {
                    name:"起风了",
                    singer:'买辣椒也用券'
                },
                {
                    name:'黑白键',
                    singer:'何洁'
                },
                {
                    name:'至此',
                    singer:'房东的猫'
                },
                {
                    name:'Thank you FRIENDS!!',
                    singer:'小林爱香'
                },
                {
                    name:'西域公主',
                    singer:'艾福杰尼'
                },
                {
                    name:'西域公主',
                    singer:'艾福杰尼'
                },
                {
                    name:'西域公主',
                    singer:'艾福杰尼'
                },
                {
                    name:'西域公主',
                    singer:'艾福杰尼'
                },
                {
                    name:'西域公主',
                    singer:'艾福杰尼'
                }
            ],

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