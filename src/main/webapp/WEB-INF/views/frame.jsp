<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>网易云音乐</title>
    <%@include file="/WEB-INF/views/include/blankHead.jsp" %>
    <style>
        iframe {
            border: 0;
            width: 100%;
            height: 100%;
        }

        .top {
            width: 100%;
            height: 40px;
            background: rgb(81, 90, 110);
        }

        .middle {
            height: calc(100% - 40px - 70px);
        }

        .bottom {
            height: 70px;
            border-top: 1px solid rgb(220, 222, 226);
        }

        .top .title {
            color: white;
            line-height: 40px;
            font-size: 14px;
            margin-left: 40px;
        }

        .middle .left {
            width: 240px;
            height: 100%;
            background-color: white;
            overflow-y: auto;
            float: left;
        }

        .middle .right {
            width: calc(100% - 240px);
            height: 100%;
            margin-left: 240px;
        }

        .song-image {
            height: 68px;
            width: 68px;
            padding: 1px 1px;
        }

        .song-image-black {
            height: 65.5px;
            width: 66px;
            padding: 1px 1px;
            position: relative;
            left: 1px;
            bottom: 67px;
            opacity: 0.5;
        }

        .song-image-black:hover {
            background: black;
            cursor: pointer;
        }

        .config {
            width: 100%;
            height: 70px;
            border-top: 1px solid rgb(220, 222, 226);
            border-right: 1px solid rgb(220, 222, 226);
        }

        /* 播放按钮 */
        .btn-round {
            border-radius: 1000px;
            padding: 8px;
            font-size: 13px;
            background: rgb(81, 90, 110);
            color: white;
            border: 1px solid transparent;
        }

        .btn-round:active {
            border: 1px solid white;
        }

        /* 隐藏表头 */
        .el-table__footer-wrapper, .el-table__header-wrapper{
            display: none;
        }

        /* 弹出框padding置0 */
        .el-popover{
            padding: 0px;
        }

        /* 去表格每一行的底边框 */
        .el-table td, .el-table th.is-leaf{
            border-bottom: 0px;
        }
    </style>
</head>
<body>
<div id="app" v-cloak style="height: 100%">
    <div style="height: 100%">
        <div class="top">
            <div class="title">网易云音乐</div>
        </div>
        <div class="middle">
            <div class="left">
                <i-Menu :active-name="contentUrl" style="width: 100%;height: calc(100% - 70px);"
                        class="scroll-bar" theme="light" @on-select="changeContent">
                    <Menu-Item name="content/search">
                        <Icon type="ios-navigate"></Icon>
                        搜索
                    </Menu-Item>
                    <Menu-Item name="content/findMusic">
                        <Icon type="ios-navigate"></Icon>
                        发现音乐
                    </Menu-Item>
                    <Menu-Group title="我的音乐">
                        <Menu-Item name="content/recentPlay">
                            <Icon type="ios-navigate"></Icon>
                            最近播放
                        </Menu-Item>
                        <Menu-Item name="content/myMusicCloud">
                            <Icon type="ios-navigate"></Icon>
                            我的音乐云盘
                        </Menu-Item>
                        <Menu-Item name="content/myCollection">
                            <Icon type="ios-navigate"></Icon>
                            我的收藏
                        </Menu-Item>
                    </Menu-Group>
                </i-Menu>
                <div class="config" style="line-height: 70px;">
                    <img style="border-radius: 1000px;width: 36px;height: 36px;
                    margin-left: 10px;position: relative;bottom: 2px;"
                         src="/static/images/userHead.png"/>
                    <span style="margin-left: 10px;font-size: 13px;">未登录</span>
                    <span style="margin-left: 60px;color: gray;font-size: 17px;position:relative;top: 1px;">
                        <span class="glyphicon glyphicon-envelope"
                              aria-hidden="true"></span>
                        <span style="margin-left: 20px;" class="glyphicon glyphicon-cog"
                              aria-hidden="true"></span>
                    </span>
                </div>
            </div>
            <div class="right">
                <iframe :src="contentUrl"></iframe>
            </div>
        </div>
        <%-- 底栏 --%>
        <row class="bottom" style="height: 100%;" oncontextmenu="return false" ondragstart="return false"
             onselectstart="return false" onbeforecopy="return false">
            <%-- 歌曲所属专辑的图片 --%>
            <i-col style="display: inline-block;position:relative;bottom: 1px;">
                <img class="song-image" src="/static/images/songHead.png">
                <div class="song-image-black"></div>
            </i-col>
            <%-- 上一首，播放，下一首 --%>
            <i-col style="display: inline-block;line-height: 70px;">
                <span style="margin-left: 20px;padding: 8px 8px 9px 9px;"
                      class="btn-round glyphicon glyphicon-step-backward"
                      aria-hidden="true"></span>
                <span style="margin-left: 20px;padding: 11px 10px 11px 11px;font-size: 15px;position:relative;top: 2px;"
                      class="btn-round glyphicon"
                      :class="{ 'glyphicon-play': !audio.isPlaying, 'glyphicon-pause': audio.isPlaying }"
                      aria-hidden="true" @click="clickPlayOrPauseButton"></span>
                <span style="margin-left: 20px;padding: 9px 8.5px 9px 8px;"
                      class="btn-round glyphicon glyphicon-step-forward"
                      aria-hidden="true"></span>
            </i-col>
            <%-- 歌曲时间条 --%>
            <i-col style="display: inline-block;margin-left: 40px;width: calc(100% - 530px);">
                <audio src=""
                       ref="audio" @pause="onPause" @play="onPlay"
                       @timeupdate="onTimeUpdate" @loadedmetadata="onLoadedMetaData"></audio>
                <div style="position:relative;bottom: 12px;">
                    <span>
                        Last Christmas
                    </span>
                    <span>
                        - Taylor Swift
                    </span>
                    <span style="float: right;">
                        <span>{{ audio.string_currentTime }}</span> / <span>{{ audio.string_duration }}</span>
                    </span>
                </div>
                <el-slider v-model="audio.sliderTime" :show-tooltip="false" @change="changeCurrentTime"
                           style="width: 100%;position:relative;bottom: 18px;"></el-slider>
            </i-col>
            <i-col style="display: inline-block;margin-left: 30px;font-size: 18px;">
                <%-- 添加到我喜欢的音乐歌单 --%>
                <span class="glyphicon glyphicon-heart"
                      style="position: relative;top: 4px;"></span>
                <%-- 播放规则: 顺序播放，顺序循环播放，随机播放，单曲循环 --%>
                <span class="glyphicon glyphicon-retweet"
                      style="margin-left: 30px;position: relative;top: 3px;"></span>
                <%-- 音量调节 --%>
                <el-popover placement="top" trigger="click">
                    <el-slider v-model="audio.sliderVolume" :show-tooltip="false"
                               style="width: 200px;padding: 0px 20px;"></el-slider>
                    <span slot="reference" class="glyphicon glyphicon-volume-up"
                          style="margin-left: 30px;position: relative;top: 5px;font-size: 19px;"></span>
                </el-popover>
                <%-- 当前播放列表 --%>
                <el-popover placement="top" trigger="click">
                    <div style="background: rgb(250, 250, 250);">
                        <div style="padding: 13px 0px 10px 10px;">
                            <span style="">播放列表</span>
                            <%--<span>收藏全部</span>--%>
                            <%--<span>清空</span>--%>
                        </div>
                        <el-table class="scroll-bar" :data="playList.data" stripe
                                  style="height: 400px;">
                            <el-table-column prop="name" label="歌名" width="150"></el-table-column>
                            <el-table-column prop="authors" label="歌手们" width="200"></el-table-column>
                            <el-table-column prop="duration" label="时长" width="70"></el-table-column>
                        </el-table>
                    </div>
                    <span slot="reference" class="glyphicon glyphicon-list-alt"
                          style="margin-left: 30px;position: relative;top: 5px;font-size: 19px;"></span>
                </el-popover>
            </i-col>
        </row>
    </div>
</div>
<%@include file="/WEB-INF/views/include/blankScript.jsp" %>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            // 与iframe的src绑定
            contentUrl: '',
            // 当前是否正在播放
            audio: {
                isPlaying: false,
                // 滑块的播放时间当前值 0 - 100，对应 0 - this.$refs.audio.currentTime
                sliderTime: 0,
                // 滑块的播放音量当前值 0 - 100，对应 0 - this.$refs.audio.volume
                sliderVolume: 100,
                // 当前的播放时间
                string_currentTime: '00:00',
                // 歌曲时长
                string_duration: '00:00'
            },
            // 播放列表
            playList: {
                data: [
                    {
                        name: 'Last Christmas',
                        authors: 'Taylor Swift',
                        duration: '03:30'
                    },
                    {
                        name: 'Last Christmas',
                        authors: 'Taylor Swift',
                        duration: '03:30'
                    },
                    {
                        name: 'Last Christmas',
                        authors: 'Taylor Swift',
                        duration: '03:30'
                    },
                    {
                        name: 'Last Christmas',
                        authors: 'Taylor Swift',
                        duration: '03:30'
                    }
                ]
            },
            // 当前用户
            sysUser: {
                userName: ''
            }
        },
        watch: {
            'audio.isPlaying': function (newVal) {
                if (newVal == true) {
                    this.$refs.audio.play();
                }
                else {
                    this.$refs.audio.pause();
                }
            },
            // 拖动进度条改变当前的播放音量
            'audio.sliderVolume': function (newVal) {
                this.$refs.audio.volume = newVal / 100;
            }
        },
        methods: {
            changeContent: function (name) {
                this.contentUrl = name;
            },
            // 当暂停时
            onPause: function () {
                this.audio.isPlaying = false;
            },
            // 当播放时
            onPlay: function () {
                this.audio.isPlaying = true;
            },
            // 当播放进度变化
            onTimeUpdate: function (event) {
                this.audio.sliderTime = this.$refs.audio.currentTime / this.$refs.audio.duration * 100;
                this.audio.string_currentTime = realFormatSecond(this.$refs.audio.currentTime);
            },
            // 当音乐元数据加载完毕
            onLoadedMetaData: function (event) {
                this.audio.string_duration = realFormatSecond(this.$refs.audio.duration);
            },
            // 点击播放/暂停按钮
            clickPlayOrPauseButton: function () {
                this.audio.isPlaying = !this.audio.isPlaying;
            },
            // 拖动滑块的鼠标释放时触发
            changeCurrentTime: function (val) {
                this.$refs.audio.currentTime = val / 100 * this.$refs.audio.duration;
            },
            /* iframe中调用 */
            playSong: function (songLocation) {
                this.$refs.audio.src = songLocation;
                this.$refs.audio.play();
            }
        },
        mounted: function () {
            // 设置内容的初始页
            this.changeContent('content/search');
            // 设置初始音量
            this.audio.sliderVolume = 50
        }
    });

    // 将整数转换成 时：分：秒的格式
    function realFormatSecond(second) {
        var secondType = typeof second;

        if (secondType === 'number' || secondType === 'string') {
            second = parseInt(second);

            var hours = Math.floor(second / 3600);
            second = second - hours * 3600;
            var minute = Math.floor(second / 60);
            second = second - minute * 60;

            return ('0' + minute).slice(-2) + ':' + ('0' + second).slice(-2);
        } else {
            return '00:00';
        }
    }
</script>
</body>
</html>
