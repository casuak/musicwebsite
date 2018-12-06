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
            <i-col style="display: inline-block;position:relative;bottom: 1px;">
                <img class="song-image" src="/static/images/songHead.png">
                <div class="song-image-black"></div>
            </i-col>
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
            <i-col style="display: inline-block;margin-left: 40px;width: calc(100% - 600px);">
                <audio style="position: relative;top: 22px;height: 1px;"
                       src="/static/songs/Taylor%20Swift%20-%20Last%20Christmas.mp3"
                       ref="audio" @pause="onPause" @play="onPlay"
                       @timeupdate="onTimeUpdate" @loadedmetadata="onLoadedMetaData"></audio>
                <el-slider v-model="audio.sliderTime" @change="changeCurrentTime"
                           style="width: 100%;position:relative;top: 14px;"></el-slider>
            </i-col>
            <i-col style="display: inline-block;margin-left: 30px;">
                <span class="glyphicon glyphicon-volume-up" style="font-size: 20px;position: relative;top: 4px;"></span>
            </i-col>
            <i-col style="display: inline-block;margin-left: 20px;">
                <el-slider v-model="audio.sliderVolume"
                           style="width: 200px;position:relative;top: 14px;"></el-slider>
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
                sliderVolume: 100
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
                this.audio.sliderTime = event.target.currentTime / this.audio.duration * 100;
            },
            // 当音乐元数据加载完毕
            onLoadedMetaData: function (event) {
                this.audio.duration = event.target.duration;
            },
            // 点击播放/暂停按钮
            clickPlayOrPauseButton: function () {
                this.audio.isPlaying = !this.audio.isPlaying;
            },
            // 拖动滑块的鼠标释放时触发
            changeCurrentTime: function (val) {
                this.$refs.audio.currentTime = val / 100 * this.audio.duration;
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

            return hours + ':' + ('0' + minute).slice(-2) + ':' + ('0' + second).slice(-2);
        } else {
            return '0:00:00';
        }
    }
</script>
</body>
</html>
