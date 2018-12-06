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
        font-size: 16px;
        color: black;
        margin-left: 1%;
        position: absolute;
        top: 15px;

    }

    .photo {
        margin-left: 12%;
    }

    .photo2{
        margin-left:8%;
    }

    .new_music {
        width: 1080px;
        margin-left: 5%;
        top: 280px;
        position: absolute;
    }

    .ivu-tabs-content{
        height:100%;
    }

</style>
<body>
<div id="app" v-cloak style="height:100%;">
    <div class="find2"> 发现音乐</div>
    <Tabs value="name1" style="height:100%">
        <Tab-Pane label="个性推荐" name="name1" style="height:100%">
            <div style="position: relative;font-size: 23px; margin-left:1%" class="推荐歌单">
                推荐歌单
            </div>

            <div class="photo">
                <div style="height: 150px;width: 150px;float: left;margin-right:20px">
                    <div>
                        <img style="height:120px;width:120px" src=""/></div>
                    <div style="font-size:15px"> 乾坤未定，皆是黑马 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left;margin-right:20px">
                    <div>
                        <img style="height:120px;width:120px" src=""/></div>
                    <div style="font-size:15px"> 乾坤未定，皆是黑马 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left;margin-right:20px">
                    <div>
                        <img style="height:120px;width:120px" src=""/></div>
                    <div style="font-size:15px"> 乾坤未定，皆是黑马 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left;margin-right:20px">
                    <div>
                        <img style="height:120px;width:120px" src=""/></div>
                    <div style="font-size:15px"> 乾坤未定，皆是黑马 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left">
                    <div>
                        <img style="height:120px;width:120px" src=""/></div>
                    <div style="font-size:15px"> 更多信息 </div>
                </div>

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

            <Tabs size="small" type="line" style="height:100%;">
                <Tab-Pane label="华语"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="流行" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="摇滚"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="民谣"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="电子"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="轻音乐"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="ACG"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="影视原声"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
            </Tabs>

        </Tab-Pane>
        <Tab-Pane label="最新音乐" name="name3" style="height:100%;">

            <Tabs type="card" style="height:100%;">
                <Tab-Pane label="新歌速递">

                    <div style="height: calc(100% - 120px);margin-top:20px;">
                        <div v-show="showList2" style="height:100%;">
                            <div style="margin-left: 31px;border:1px solid rgb(245,247,249);">
                                <i-table size=small height="400" stripe :columns="columns1" :data="data1" @on-row-dblclick="dblClickPlay" ></i-table>
                            </div>
                        </div>
                    </div>

                </Tab-Pane>
                <Tab-Pane label="新碟上架" style="height:80%;">
                    <div style="font-size:18px;font-family: 微软雅黑;">
                        本周新碟
                    </div>
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
            </Tabs>

        </Tab-Pane>
        <Tab-Pane label="歌手" name="name4" style="height:100%;">

            <Tabs size="small" typr="line" style="height:100%;">
                <Tab-Pane label="全部" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="男歌手" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="女歌手" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="乐队组合" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 乾坤未定，你我皆是黑马 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src=""/></div>
                            <div style="font-size:15px"> 更多信息 </div>
                        </div>

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