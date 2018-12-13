<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>千寻音乐</title>
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
        .el-table__footer-wrapper, .el-table__header-wrapper {
            display: none;
        }

        /* 弹出框padding置0 */
        .el-popover {
            padding: 0px;
        }

        /* 去表格每一行的底边框 */
        .el-table td, .el-table th.is-leaf {
            border-bottom: 0px;
        }

        .userHead:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
<div id="app" v-cloak style="height: 100%">
    <div style="height: 100%">
        <div class="top">
            <div class="title">千寻音乐</div>
        </div>
        <div class="middle">
            <div class="left">
                <i-Menu :active-name="contentUrl" style="width: 100%;height: calc(100% - 70px);"
                        class="scroll-bar" theme="light" @on-select="contentUrl=$event">
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
                    <Menu-Group title="系统功能">
                        <Menu-Item name="content/manageUser">
                            <Icon type="ios-navigate"></Icon>
                            管理用户
                        </Menu-Item>
                    </Menu-Group>
                </i-Menu>
                <div class="config" style="line-height: 70px;">
                    <span class="userHead" @click="clickUserHead">
                        <img src="/static/images/userHead.png"
                             style="border-radius: 1000px;width: 36px;height: 36px;margin-left: 10px;position: relative;bottom: 2px;"/>
                        <span style="margin-left: 10px;font-size: 13px;">{{ userInfo.userName }}</span>
                    </span>
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
                        &nbsp;{{ audio.songName }}
                    </span>
                    <span>
                        {{ ((audio.singer == null || audio.singer == '') ? '' : ' - ') + (audio.singer == null ? '' : audio.singer) }}
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
                            <el-table-column prop="singers" label="歌手们" width="200"></el-table-column>
                            <el-table-column prop="duration" label="时长" width="70"></el-table-column>
                        </el-table>
                    </div>
                    <span slot="reference" class="glyphicon glyphicon-list-alt"
                          style="margin-left: 30px;position: relative;top: 5px;font-size: 19px;"></span>
                </el-popover>
            </i-col>
        </row>
        <%-- 登陆弹窗 --%>
        <Modal v-model="modal1" :footer-hide="true" title="登陆注册页面" style="text-align: center" width="350">
            <p>
                <br><br><br><br><br><br><br><br>
                <i-button shape="circle" style="height:40px" @click="modal2=true;modal1=false;modal3=false" long>
                    手机号登录
                </i-button>
                <br><br>
                <i-button shape="circle" style="height:40px" @click="modal1=false;modal2=false;modal3=true" long>
                    注册
                </i-button>
            </p>
            <br><br>
            <br>
            <divider>
                其他登陆方式
            </divider>
            <div style="text-align: center">
                <i-button shape="circle">
                    微信
                </i-button>
                <i-button shape="circle">
                    QQ
                </i-button>
                <i-button shape="circle">
                    新浪微博
                </i-button>
                <i-button shape="circle">
                    网易邮箱
                </i-button>
            </div>
        </Modal>
        <Modal v-model="modal2" :footer-hide="true" title="登录" style="text-align: center" width="350">
            <i-form inline :rules="loginInfo._rules" :model="loginInfo">
                <br><br>
                <form-item label="用户名" prop="userName">
                    <i-input type="text" placeholder="用户名" v-model="loginInfo.userName"></i-input>
                </form-item>
                <br>
                <form-item label="密码" prop="password">
                    <i-input type="password" placeholder="密码" v-model="loginInfo.password"></i-input>
                </form-item>
                <br><br><br>
                <form-item>
                    <i-button @click="login">
                        登陆
                    </i-button>
                    <i-button @click="modal2=false;modal1=true">
                        返回
                    </i-button>
                </form-item>
            </i-form>
        </Modal>
        <Modal v-model="modal3" :footer-hide="true" title="注册" style="text-align: center" width="350">
            <i-form inline>
                <br><br><br><br><br><br>
                <form-item prop="user">
                    <i-input v-model="registerInfo.userName" type="text" placeholder="请输入用户名">
                        <icon type="ios-person-outline" slot="prepend"></icon>
                    </i-input>
                </form-item>
                <br>
                <form-item prop="password">
                    <i-input v-model="registerInfo.password" type="password" placeholder="请输入密码">
                        <icon type="ios-lock-outline" slot="prepend"></icon>
                    </i-input>
                </form-item>
                <br><br>
                <form-item>
                    <i-button @click="register">注册</i-button>
                    <i-button @click="modal3=false;modal1=true">返回</i-button>
                </form-item>
            </i-form>
            <divider>
                其他注册方式
            </divider>
            <div style="text-align: center">
                <i-button shape="circle">
                    微信
                </i-button>
                <i-button shape="circle">
                    QQ
                </i-button>
                <i-button shape="circle">
                    新浪微博
                </i-button>
                <i-button shape="circle">
                    网易邮箱
                </i-button>
            </div>
        </Modal>
        <Modal v-model="modal4" :footer-hide="true" title="个人信息" style="text-align: center" width="350">
            <i-button @click="logout">退出登陆</i-button>
        </Modal>
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
                string_duration: '00:00',
                // 当前歌名
                songName: null,
                // 当前作者名
                singerName: ''
            },
            // 播放列表
            playList: {
                data: [
                    {
                        name: 'Last Christmas',
                        singers: 'Taylor Swift',
                        duration: '03:30'
                    },
                    {
                        name: 'Last Christmas',
                        singers: 'Taylor Swift',
                        duration: '03:30'
                    },
                    {
                        name: 'Last Christmas',
                        singers: 'Taylor Swift',
                        duration: '03:30'
                    },
                    {
                        name: 'Last Christmas',
                        singers: 'Taylor Swift',
                        duration: '03:30'
                    }
                ]
            },
            // 当前用户信息
            userInfo: {},
            // 当前是否已登陆
            isLogin: false,
            // 注册信息
            registerInfo: {
                userName: '',
                password: ''
            },
            // 登陆信息
            loginInfo: {
                userName: '',
                password: '',
                _rules: {
                    userName: [{required: true, message: '用户名不能为空', trigger: 'blur'}],
                    password: [{required: true, message: '密码不能为空', trigger: 'blur'}]
                }
            },
            // 三个弹窗
            modal1: false,
            modal2: false,
            modal3: false,
            modal4: false
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
            test: function(event){
                console.log(event);
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
            // 点击用户头像或用户名
            clickUserHead: function () {
                if (this.isLogin) {
                    this.modal4 = true;
                }
                else {
                    this.modal1 = true;
                }
            },
            // 注册
            register: function () {
                var url = "login/register";
                var data = JSON.stringify(this.registerInfo);
                $.ajax({
                    type: 'post',
                    data: data,
                    url: url,
                    cache: false,
                    dataType: "json",
                    contentType: 'application/json;charset=utf-8',
                    success: function (d) {
                        if (d.status == 1) {
                            alert("注册成功");
                            app.modal3 = false;
                            app.checkLogin();
                        }
                        else {
                            alert("注册失败");
                        }
                    }
                });
            },
            // 检测用户名是否被注册
            checkUserName: function () {

            },
            // 打开此框架时获取后端的初始化数据
            checkLogin: function () {
                var url = "login/checkLogin";
                $.post(url, null, function (d) {
                    if (d.isLogin) {
                        app.userInfo = d.userInfo;
                        app.isLogin = true;
                    }
                    else {
                        app.isLogin = false;
                        app.userInfo = { userName: '未登录' }
                    }
                })
            },
            // 登陆
            login: function () {
                var url = "login/login";
                var data = JSON.stringify(this.loginInfo);
                $.ajax({
                    type: 'post',
                    data: data,
                    url: url,
                    cache: false,
                    dataType: "json",
                    contentType: 'application/json;charset=utf-8',
                    success: function (d) {
                        if (d.status == 1) {
                            alert("登陆成功");
                            app.modal2 = false;
                            app.checkLogin();
                        }
                        else {
                            alert("用户名或密码错误");
                        }
                    }
                });
            },
            // 登出
            logout: function () {
                var url = "login/logout";
                $.post(url, null, function (d) {
                    app.modal4 = false;
                    alert("退出成功");
                    app.checkLogin();
                })
            },
            /* iframe中调用 */
            playSong: function (song) {
                this.$refs.audio.src = song.location;
                this.$refs.audio.play();
                app.audio.songName = song.name;
                app.audio.singer = song.singer;
            }
        },
        mounted: function () {
            // 设置内容的初始页
            this.contentUrl = 'content/search';
            // 设置初始音量
            this.audio.sliderVolume = 50;
            // 检测当前用户是否登陆
            this.checkLogin();
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
