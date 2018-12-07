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
        .ivu-table-header{
            display: none;
        }

        .ivu-modal-content{
            height:500px;
        }
        .ivu-modal-body{
            height:435px;
        }
        .ivu-modal-footer{
            height:0px;
        }

    </style>
</head>

<body>
<div id="app" v-cloak>

    <div style="margin-left:40px">最近播放</div>
    <Tabs style="margin-left:40px">
        <Tab-Pane label="歌曲" :name="tabNames[0]">
            <i-button >
                <Icon type="md-arrow-dropright-circle" @click="playAllMusic"></Icon>
                播放全部
            </i-button>

            <i-button >
                <Icon type="ios-trash" /></Icon>
                全部清空
            </i-button>
            <i-button @click="modal1 = true">登录</i-button>


            <Modal v-model="modal1" title="登录" width="350">
                <p slot="header" style="text-align: center">登陆注册页面</p>
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
                <p slot="footer">

                </p>
            </Modal>
            <Modal v-model="modal2" title="登录" style="text-align: center" width="350">
                <i-form ref="formInline":model="formInline":rules="ruleInline" inline>
                    <br><br><br><br><br><br><br><br>
                    <form-item prop="user">
                        <i-input type="text" v-model="formInline.user" placeholder="Username">
                            <icon type="ios-person-outline" slot="prepend">

                            </icon>
                        </i-input>
                    </form-item>
                    <br>
                    <form-item prop="password">
                        <i-input type="password" v-model="formInline.password" placeholder="Password" >
                            <icon type="ios-lock-outline" slot="prepend" >

                            </icon>
                        </i-input>
                    </form-item>
                    <br><br><br>
                    <form-item>
                        <i-button @click="handleSubmit('formInline')">
                            Signin
                        </i-button>
                    </form-item>
                </i-form>
                <div slot="footer">

                </div>
            </Modal>
            <Modal v-model="modal3" title="注册" style="text-align: center" width="350">
                <i-form ref="formInline":model="formInline":rules="ruleInline" inline>
                    <br><br><br><br><br><br>
                    <form-item prop="user">
                        <i-input type="text" v-model="formInline.user" placeholder="Username">
                            <icon type="ios-person-outline" slot="prepend">

                            </icon>
                        </i-input>
                    </form-item>
                    <br>
                    <form-item prop="password">
                        <i-input type="password" v-model="formInline.password" placeholder="Password" >
                            <icon type="ios-lock-outline" slot="prepend" >

                            </icon>
                        </i-input>
                    </form-item>
                    <br><br>
                    <form-item>
                        <i-button @click="handleSubmit('formInline')">
                            Register
                        </i-button>
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
                <div slot="footer">

                </div>
            </Modal>
            <div style="height: calc(100% - 120px);margin-top:20px;">
                <div v-show="showList" style="height:100%;">
                    <div style="margin-right: 31px;border:1px solid rgb(245,247,249);">
                        <i-table size=small height="400" stripe :columns="columns1" :data="data1" @on-row-dblclick="dblClickPlay" ></i-table>
                    </div>
                </div>
            </div>

        </Tab-Pane>
        <Tab-Pane label="节目" :name="tabNames[1]">
            <i-button>
                <Icon type="md-arrow-dropright-circle"></Icon>
                播放全部
            </i-button>
            <i-button>
                <Icon type="ios-trash" /></Icon>
                全部清空
            </i-button>

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
                tabNames:['song','show'],

                formInline:{
                    user:'',
                    password:''
                },
                ruleInline:{
                    user:[
                        {
                            required:true,message:'Please fill in the user name', trigger:'blur'
                        }
                    ],
                    password:[
                        {
                            required:true,message:'Please fill in the password', trigger:'blur'
                        },
                        {
                            type:'string', min:6, message:'The password length cannot be less than 6 bits',
                            trigger:'blur'
                        }
                    ]
                },

                modal1:false,

                modal2:false,

                modal3:false,

                currentTab:'',

                showList:true,
                columns1: [
                    {
                        type:'index',
                        width:60,
                        align:'center'
                    },
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
                data1: []
            },
            methods: {
                dblClickPlay: function (){
                    // TODO: play music
                },
                playAllMusic: function(){

                },
                ok(){
                    this.$Message.info('Clicked ok');
                },
                cancel(){
                    this.$Message.info('Clicked cancel');
                },
                handleSubmit(name){
                    this.$refs[name].validate((valid) => {
                        if(valid){
                            this.$Message.success('Success!');
                            this.modal2 = false;
                        }else{
                            this.$Message.error('Fail!');

                        }
                    })
                }
            },
            mounted: function () {
                var url = "/content/recentPlay";
                var callback = function() {
                    alert("error");
                }
                this.currentTab = this.tabNames[0];
                switch (this.currentTab) 
                {
                    case this.tabNames[0]:
                        callback = this.callback_getRecentSongList;
                        url +="getRecentSongList";
                    case this.tabNames[1]:
                        callback = this.callback_getRecentShowList;
                        url +="getRecentShow";
                }
                $.post(url,data,callback);

                // callback_getRecentSongList: function (d) {
                //     console.log(d);
                //     for (var i = 0; i < d.length(); i++){
                //         if (d[i].albumList.length > 0){
                //             d[i].album = d[i].albumList[0]['name'];
                //         }
                //         if (d[i].singerList.length > 0){
                //             d[i].author = d[i].singerList[0].nickName;
                //         }
                //         for(var j = 1; j < d[i].singerList.length; j++){
                //             d[i].author += '/' + d[i].singerList[j].nickName;
                //         }
                //     }
                //     this.table.data = d;
                // }


            }
        })
</script>
</body>
</html>