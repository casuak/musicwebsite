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
                        <img style="height:120px;width:120px" src="http://p1.music.126.net/plkRuO9yhYPZpYuHsm0yhQ==/18970973625868369.jpg?param=140y140"/></div>
                    <div style="font-size:15px"> 国人的噪声美学 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left;margin-right:20px">
                    <div>
                        <img style="height:120px;width:120px" src="http://p2.music.126.net/F6n8Nmx3PqsMf-_Y3-8oKg==/1364493987481651.jpg?param=140y140"/></div>
                    <div style="font-size:15px"> 星轨旋律 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left;margin-right:20px">
                    <div>
                        <img style="height:120px;width:120px" src="http://p1.music.126.net/xZnwYzAa-lsJv94c7LYlTw==/109951163622809520.jpg?param=140y140"/></div>
                    <div style="font-size:15px"> 岁月如潮水 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left;margin-right:20px">
                    <div>
                        <img style="height:120px;width:120px" src="http://p1.music.126.net/qz-qvu1Y5gDuWrOYFJk1bg==/3426078243966071.jpg?param=140y140"/></div>
                    <div style="font-size:15px"> 爵士吉他大师 </div>
                </div>

                <div style="height: 150px;width: 150px;float: left">
                    <div>
                        <img style="height:120px;width:120px" src="http://p1.music.126.net/BFN3on8fAghaLEITtTEbyA==/109951163632513872.jpg?param=140y140"/></div>
                    <div style="font-size:15px"> 更多... </div>
                </div>

            </div>

            <div style="height: calc(100% - 120px);margin-top:180px;">
                <div v-show="showList" style="height:100%;">
                    <div style="border:1px solid rgb(245,247,249);">
                        <i-table size=small height="250" stripe :columns="columns2" :data="data2" @on-row-dblclick="dblClickPlay" ></i-table>
                    </div>
                </div>
            </div>

        </Tab-Pane>
        <Tab-Pane label="歌单" name="name2" style="height:100%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <Tabs size="small" type="line" style="height:100%;">
                <Tab-Pane label="华语" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/26hEfO3yw3CYxPklpLAejA==/109951163703291174.jpg?param=200y200"/></div>
                            <div style="font-size:15px"> 恋爱指南 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/w-ph-t3_8Gea0uZqTFk7Mg==/109951163683209116.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 午夜心碎俱乐部 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/8TZecCv5K_yYMbeZ6gieFw==/19029247742518751.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 好听到可以单曲循环 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/4XM7vLfoSqcVuX7FJZydNw==/109951163251483797.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 这里是好妹妹乐队 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/oq_NCjWbGw40ZI6b_TNNaA==/18829136627870119.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 一个天蝎座的听歌列表 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/wpahk9cQCDtdzJPE52EzJQ==/109951163271025942.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 初恋糖配料表 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/V3vvhc2XFR570ri_oYqRDw==/19144696463164341.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 攒了一大堆好听的歌</div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/GneY52rqwlkoz8wNsy3rnw==/18570751394187297.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 花又开了 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/sGP9Wr8qrRNfN7Ht44iI8A==/18910500486698022.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 老歌终究经得起时间推敲 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/ctirmk-nm1iEM5id7lYpcg==/19172184254114187.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 重温那些年的经典旋律 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/3LbMYwTiQD5U3MCSgDPgdA==/109951163035317628.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 听说你也在好听的华语歌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/plkRuO9yhYPZpYuHsm0yhQ==/18970973625868369.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 国人的噪声美学 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/xZnwYzAa-lsJv94c7LYlTw==/109951163622809520.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 岁月如潮水 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/F6n8Nmx3PqsMf-_Y3-8oKg==/1364493987481651.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 星轨旋律 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/o-FjCrUlhyFC96xiVvJZ8g==/109951163111191410.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Jay的时代 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/GKhjgN1ltQYK3eYf9DdJwg==/18727981557622763.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 聆听王菲 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/qz-qvu1Y5gDuWrOYFJk1bg==/3426078243966071.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 一百位爵士吉他大师 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/ygk9_LT0yuzGUbIPZyLrKw==/109951163062867509.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 毛不易的民谣世界 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/brra6IhHKPP-R2GoywESZg==/18922595114287605.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 旧人越看越无情 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/rgudisBXpvYSB3fcilzfbg==/109951162908513390.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="流行" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/9dLJ3rPpz3lobPjdpNKcRw==/109951163667817809.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> [欧美]燃情奔放 摇滚时光 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/tYwjqD_rC57XHfi5HdLBAg==/109951163265887961.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 熬夜和想你，我都改戒了 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/zc9UfQOwlQB8_mYv9oaN2g==/109951163436384760.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 致前任 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/26hEfO3yw3CYxPklpLAejA==/109951163703291174.jpg?param=200y200"/></div>
                            <div style="font-size:15px"> 恋爱指南 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/tTZcmIj2RV3ahQ-PvT-fEg==/109951163185998147.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 这里是方大同 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/8TZecCv5K_yYMbeZ6gieFw==/19029247742518751.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 好听到可以单曲循环 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/ICv1ZqD39lvvS0CdhHl1EA==/109951163320645123.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 历经岁月磨砺后的沧桑 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/GKhjgN1ltQYK3eYf9DdJwg==/18727981557622763.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 夜间的情歌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/ZYrAOQcsc7qMEECKRyF2pw==/109951163246590689.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 自罚三杯也不肯开口的秘密 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/m13zofgXFQWrLEOz9mKhcg==/109951163313795420.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 予你情诗百首 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/3LbMYwTiQD5U3MCSgDPgdA==/109951163035317628.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 听说你也在找好听的华语歌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/brra6IhHKPP-R2GoywESZg==/18922595114287605.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 旧人越看越无情 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/nXF_Faa7-ZisQShLlAqyjw==/18791753231401604.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 青春有一首孙燕姿 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/tF92I8Io71_zAYHBAQuL5Q==/109951163698515057.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 理想男友音 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/xZnwYzAa-lsJv94c7LYlTw==/109951163622809520.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 岁月如潮水 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/plkRuO9yhYPZpYuHsm0yhQ==/18970973625868369.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 国人的噪声美学 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/8NBldNs-O0V4gl5r0-sxlA==/18957779486683855.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 一路向北 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/zDo8F2ivJ5pFZN6i1zH47Q==/18828037114489745.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> fish的情歌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/05TfCU5RleIonyNsZM70Rw==/109951163711013339.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 岁月如歌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/F6n8Nmx3PqsMf-_Y3-8oKg==/1364493987481651.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="摇滚"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/TDqPSLbWvBxXQGu0Sro9Hg==/109951163709081396.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 再冷也不能忘了摇滚 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/LcAZ69MRG_Lj6FnJSGax9Q==/109951163693274143.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 世界后摇音乐巡礼 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/TsTuvSHQunwAP7GgoLL9sg==/109951163322657750.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 午夜拥抱计划 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/9dLJ3rPpz3lobPjdpNKcRw==/109951163667817809.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 燃情奔放 摇滚时光 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/rBB0rmK_Zo5ibpTttZjhzQ==/18975371672712203.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 一万包万宝路 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/PyLL-pFWHjtFvaEgwwXPJw==/109951163674743188.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 游戏用电音 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/uIjD2hi-GIoOxndZQ6-JZw==/19109512090892203.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 震撼你的心灵（高端毒品） </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/U8yhXkhsCTvBaZqWxL5RYw==/19187577416645725.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 我摊开心中愁 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/aES3C3tibctJy4Z3Yr_q4w==/109951163005280646.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 这里有世界不同的声音 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/Vxsf58sMyNjqnWVZa9Wbfw==/18991864347187831.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 66号公路 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/ewyKPfNBRvRr15DR2i_y7A==/3262251006259197.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 『电音』抖腿必备 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/CoIhHz_iFYRD9sN1Rn-Bkg==/528865124574405.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 三秒之内点红心 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/uxUY64QwAiri3NhBicA2fQ==/109951163050440275.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Linkin Park </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/n3sr7bNMdjILj44rYi7Y8g==/18828037115920682.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> OneRepublic-Rock </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/1jC-LXemFXlMxgZMErjldw==/1394180749274328.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 王者荣耀 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/GWpVvxmyPnGJorbo7qla4Q==/18701593278537277.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 顶级车载音乐，秋名山专属 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/c9p36Vb8tz5kLrXrx2HAmA==/18874216602438730.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> LOL战歌 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/eL-ft_ucUcby648eVnNewA==/19162288649094558.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Yellow </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/6t3Uc4m5gq2u19bRb__vMQ==/109951163410578006.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 劲爆 电音 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/y-EXhGjOSs3QQBeq4gcTbA==/18958878998315014.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="民谣"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/ZrKYRT01eUKQnIS15LH_tQ==/109951163586031186.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 往昔璀璨如钻 却又锈迹斑斑 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/Ms2T7Gr991ikj-KUirUGMg==/109951163543435766.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 漂浮在失重宇宙 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/t-JfZLK54z5H_MCdok3tEw==/109951163503924397.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 钢琴和民谣也很搭 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/9s1YnyybnB660YZ6t8PuZw==/109951162976839307.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 悠闲惬意的慵懒曲调 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/0_F3Ef-BwFoU-W31Yi5quQ==/109951163077832730.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 那些温暖的男友嗓 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/V3vvhc2XFR570ri_oYqRDw==/19144696463164341.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 攒了一大堆好听的歌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/lX8693uWGhNkEMbMfPgSkg==/109951163001859850.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 让你感同身受 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/Ou7ZdMMM_KiClPPWFyZtPA==/3300733909607437.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 寻找青春回忆 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/J-So8uu3Mo9zKfN128L_pQ==/109951162875623128.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 小清新民谣 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/3QiOZB5DhjGYfpTlqLWvzQ==/3394192421597991.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 情话是一门失传的艺术 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/3r2bGiF85_DT_CCukewL1Q==/109951163371800944.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 人间至味是清欢 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/XcD-USRhQyV_Ie2te5t3zw==/109951163446906604.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 孤独的时光 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/a3sVmFHLQs80XrXmF2GWfw==/18986366788933377.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 还是想在夏天与你相恋 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/zLGAFoywT_Hwon4KxR11yQ==/109951163279541917.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 丽江酒吧 原创民谣 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/Q4khbT7qVX1SpxgJm3PSIg==/109951163279802363.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 花粥，陈粒，谢春花。 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/Qzq6Gu1qagnZ_YKmdOg2eQ==/109951163265825501.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 听一段故事 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/IQooheDuSML-8wqgO0wLLw==/109951163606639315.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 民谣，唱尽人生百态 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/cEETSDRYMMO__QHvawNohA==/1373290027359153.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 艳阳里的大雪纷飞 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/Cc3rl4OVZ9oJ18qHAgwW_w==/109951163393885165.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 永远有多远 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/4Bn7a5-vjrsGVwG4WQD0yA==/109951163548033273.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="电子"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/IXPSqI1H4wLDG8lchbNH1Q==/109951163702991180.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 躁动你内心的小怪兽 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/Aezfz-RmrspJ1S_bO5djkw==/109951163673633684.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 说唱会馆 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/IFmG6wOAC3qzyCDNKQANCQ==/109951163576455473.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 勤洗头啦 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/zwtMjQVJMj3Pvl6MwjsF3g==/19011655556508462.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 星际旅行必备 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/DWclaqJGILCR_1nqToMQxA==/109951163360942258.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 全球史诗级万评电音 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/6BIwao4_56olEYhtxUJe-w==/109951163569373523.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 纯音乐的殿堂 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/On4ABGqNXtJiz99ier6fVQ==/109951163515219001.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 放纵沉沦于弹跳维度 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/QYX0zirg0EBvbFOCO9WcUA==/18886311230928378.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 当女声邂逅电音 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/kpc9lkgxTa7fAxBRhoMNIQ==/109951163679979098.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 音色沁人心 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/m5tWEZja37uLCRxsf4C8TA==/109951163570760840.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 惊艳耳际，一秒倾心 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/vq4vvYVoJKxNhC0iepRGjw==/109951163498781448.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 一听就上瘾的惊艳女声 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/7Ggp1_kUn7-fPBPlMgB-eQ==/18868719044841362.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 电子与人声的完美碰撞 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/uIjD2hi-GIoOxndZQ6-JZw==/19109512090892203.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 震撼你的心灵（高端毒品） </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/JTzVZtQn4VVZy3kHPtj4NQ==/109951163595071165.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 为电音画龙点睛的惊艳女歌手 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/N2tdkq-2Xa7vUKG9dSU9Rw==/109951163437830206.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 净澈之道 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/kcexZNEGt3eUyObJ61nK2Q==/109951163434440272.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 优质原曲邂逅神级Remix </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/w-ph-t3_8Gea0uZqTFk7Mg==/109951163683209116.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 午夜心碎俱乐部 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/TgllwFkOFiMsOWRkf6VC2A==/18733479116258401.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 刷题必听电音(无人声) </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/8d8M0_jDf9R6SATw5-WsdA==/19150194021590446.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 氤氲缭绕 静谧沁人 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/0zgNzzbeWf8NOFqPmivw8Q==/109951163380887301.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="轻音乐"  style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/hfJ5tKNF3QO5uX5NmgYcfQ==/109951163690312504.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 穿过薄雾黎明飞往天空城 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/UtsHHs_2AXEh21fxiFPgng==/109951163694612269.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 去感受心的方向 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/3nPIIRcLv1fNc_DCFeIXPQ==/109951163401615779.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 散落的时光 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/7-f1SQ9tHkKNU4kQIzj72w==/19194174486693388.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 几时归去，做个闲人 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/g4d--pufbOPWCvzWlfv6Lg==/109951163062852517.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 考研国考刷题专用轻音乐 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/3wKuxd8SFWFR3hbYFajF7w==/19034745300678805.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 凝望中秋月，遥寄故乡情 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/DVOXtRdQ8SLygl0nSBko9A==/19008357021310890.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 你搜不到系列 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/30jtpBi2sJCSxltm41XPDw==/109951163575772094.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 【旋律控】好听的英文歌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/Oiy1udMGFWXYd134EdZpHA==/109951163144311344.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 星际旅行必备 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/8fQ9jzTJnMweLNm7VoyPSw==/6623458045881301.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 长年积雨的森林 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/OVl4spkiUH1Jo9uaoB_kgA==/109951163664933141.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 享受阳光的宠爱 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/neAKnXhkCflU3YNQbVsekQ==/19033645788547533.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 你偶尔需要安静的发泄 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/u2RnmOgkKLEhKIREGp2Xww==/109951162895796021.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 悠然动听 平平静静 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p2.music.126.net/F6n8Nmx3PqsMf-_Y3-8oKg==/1364493987481651.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 星轨旋律 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/AbKKWF8tz8elS2PhWX4gFQ==/109951162975596705.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 霓虹雨巷 孑然一身 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/TMTRnjJzYxHktpkyTw9urw==/109951163237600991.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 清新的雨，匆忙的路人 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/uIjD2hi-GIoOxndZQ6-JZw==/19109512090892203.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 震撼你的心灵（高端毒品） </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/gYJPx7i2kF6g0aQSXu9NwA==/109951163617436590.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 明月别枝惊鹊 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/K6WKJ0uzGteLyzjRDHPciA==/109951163469426437.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 夜深人静时 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p1.music.126.net/98uKAkOXzJup91OkP1IKpA==/109951163580989296.jpg?param=140y140"/></div>
                            <div style="font-size:15px"> 更多... </div>
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
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/6V3wjS1JBcOyL4gCMB92bA==/109951163709719269.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 路过人间 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/k7vF61ZygjEDdzJzt3CVRw==/109951163710183516.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 虚拟恋爱指南 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/x2-nJAeh1QYAAaaVB8oqIw==/109951163709524815.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 遗书 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/dSm_ni1BJkgdgJBJyn9Kng==/109951163707190099.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> How You Love Me </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/zau5i1yHqvcIPv6UMOp5-Q==/109951163710535610.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Twenty One </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/BQWzbopj7oNuCd1YpMOzdQ==/109951163710553178.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Waste It On Me </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/XRxZk-k7_f_KFallvyNVQg==/109951163709089294.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 岩石里的花 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/4xY8Fe-ss9tTB1GceDCt5A==/109951163707505199.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 正经 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/VTwI2k3Qh9moXxvsk2B_Hg==/109951163710229079.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Belong </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/PoPX1-4kC9v_dF0J9jNWOg==/109951163710665901.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 19 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/9HRMpTdqj1E_0Et1poqBEw==/109951163710903730.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 慢慢爱 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/g2DLcv0SmSXc9S3oHnMpmw==/109951163709671721.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> JAPRISON </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/nuQbaqdgyDi_fcZIB29ung==/109951163707352041.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> NEXT TO YOU </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/sZKqx0yE3Tff-ellba4N6g==/109951163705467737.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 漂流 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/atHbNOsHuMoqG_-uGumcTw==/109951163709798192.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 太极·禅 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/7N-hpOCAEaeFn6X7HNsk4w==/109951163707652084.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> I Got Love </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p2.music.126.net/wxM2uo-Damdv8fTrxPWb3A==/109951163704289595.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 白日梦 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/ZfH4wJM55anueeXtMGXCAw==/109951163709821992.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 梁雨 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/m9IV_OCxHOJCe1MmY48C9Q==/109951163711395811.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Fire </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="https://p1.music.126.net/OOrL6DNwLz__iP6HLlsQKw==/109951163655137196.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 更多... </div>
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
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/GKhjgN1ltQYK3eYf9DdJwg==/18727981557622763.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 王菲 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/o-FjCrUlhyFC96xiVvJZ8g==/109951163111191410.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 周杰伦 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/RQ8pNp66CqAsieGtSaj_5g==/109951163398568078.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 李荣浩 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/_d1scu7z_1dmd0Zgv9mTLA==/19165587183900212.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 陈奕迅 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/cov8_LYlAczLxqY694HUPQ==/281474976728150.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Queen </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/F9asgcj7C7qSl_je9XDvRw==/603631883675241.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 张惠妹 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/r7uMnwjWpYMuQI_3ZTg56A==/18528969953189760.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 邓紫棋 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/tTZcmIj2RV3ahQ-PvT-fEg==/109951163185998147.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 方大同 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/dtm0L5L0OtxDzDpnFTqVyg==/3285340750049091.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 张信哲 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/eL-ft_ucUcby648eVnNewA==/19162288649094558.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Coldplay </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/y25QYi-Hgj0CD-DJGSIWWA==/109951163440095910.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 五月天 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/4XM7vLfoSqcVuX7FJZydNw==/109951163251483797.jpg?param=130y130"/></div>
                            <div style="font-size:15px">好妹妹乐队 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/zDo8F2ivJ5pFZN6i1zH47Q==/18828037114489745.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 梁静茹 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/nXF_Faa7-ZisQShLlAqyjw==/18791753231401604.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 孙燕姿 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/3imMSV8Hl85AO5ljeGxo8Q==/3402988503160586.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 蔡依林 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/HciCtD7swUU_D9wem9NfNA==/6044015418524944.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 陶喆 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/znozXOyHQXRc52hU6UAtmg==/756463999935630.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 苏打绿 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/8p_S_iPhaj7JgpPQ7rdieA==/18607035278742551.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 林忆莲 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/Fy3OSgevuA-iwsy3X_pqpA==/235295488361002.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 杨千嬅 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/3sYHMtCKpWIxt9G12yjUTw==/264982302310377.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="男歌手" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/ULlwJ2drOfYv-f6-_7jGGQ==/3250156379592966.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 薛之谦 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/_d1scu7z_1dmd0Zgv9mTLA==/19165587183900212.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 陈奕迅 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/DeH1T1OKwTL2bIg3l8L21A==/109951163186203713.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 林宥嘉 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/-2o0OyBFtfCCoBqL1Q-TjA==/109951163078599089.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 华晨宇 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/Ear-Ycru9SHVKzEL39of9w==/3286440257877602.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 张学友 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/wupRd6PIODPM2gMxmlxD8w==/39582418617683.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 张国荣 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/hky2p2iXdNk3cLpDZX1l-A==/18881913183852960.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 胡彦斌 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/RQ8pNp66CqAsieGtSaj_5g==/109951163398568078.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 李荣浩 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/4AFuQr4QxXlq-N3Uqun9AA==/109951163424310880.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 徐秉龙 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/ygk9_LT0yuzGUbIPZyLrKw==/109951163062867509.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 毛不易 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/q-I4cF6k7MJ5K_fRxEvozg==/109951163511967669.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 汪苏泷 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/YVobfHyiKh_hSnKy8z5LRw==/18614731858471739.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 张杰 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/E0naLXtRIBuB_f6RvlBscg==/109951162811539164.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 宋东野 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/UxM5Hr-t16-dwpgMfri-Mw==/6048413465039896.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 陶喆 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/YDKUscOIKTm7Ko7KyKWggw==/3346913395417148.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 朴树 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/P8A2-QG6XvISE5b8ytL9_Q==/1426066581780644.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 张信哲 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/71bgc394k7FzQ_MPFOoLMg==/6049512976723323.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 李志 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/5_0ux0Y9P5WTfW70zSP2wQ==/3243559305677511.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 杨宗纬 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/_uWUYxqrDya080bLzOZc4g==/109951163185992874.jpg?param=640y300"/></div>
                            <div style="font-size:15px"> 方大同 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/cnGpIQ6rQCKVrDyVVSpzeg==/3263350518850877.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="女歌手" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/r7uMnwjWpYMuQI_3ZTg56A==/18528969953189760.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 邓紫棋 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/yFF4np8WCZzWlzbftLZy9A==/3253454914226963.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 周笔畅 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/nXF_Faa7-ZisQShLlAqyjw==/18791753231401604.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 孙燕姿 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/Q92YwJrk2f2tsK-7B0VIhQ==/6628955605123612.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 陈粒 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/S9BDZZ7UOhXAIYsrP1B9HQ==/109951163087345104.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 徐佳莹 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/3imMSV8Hl85AO5ljeGxo8Q==/3402988503160586.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 蔡依林 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/ByXwX59XAoYsY3jwTLvlNQ==/1382086129327137.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 莫文蔚 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/D60e7K2Hxf1uWDRTlGy3uQ==/244091581382928.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 谢安琪 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/8p_S_iPhaj7JgpPQ7rdieA==/18607035278742551.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 林忆莲 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/hlRpgO7PaaAPFac7TNqSAQ==/109951163369765973.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 曾轶可 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/GKhjgN1ltQYK3eYf9DdJwg==/18727981557622763.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 王菲 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/F9asgcj7C7qSl_je9XDvRw==/603631883675241.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 张惠妹 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/2XHRjgOcjfdpSEgzP2AbgA==/3412884102389555.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 田馥甄 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/Viu8cCdi3qB7rhdGNXm8MQ==/109951163241993854.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 袁娅维 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/DpuY1OXXcRRQrTkQZyKD8w==/109951163425899085.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 火箭少女101 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/Fy3OSgevuA-iwsy3X_pqpA==/235295488361002.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 杨千嬅 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/PDSLSEj5EHvGWeaTy5MqWQ==/109951163064519620.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 张靓颖 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/sKrwPypGtaZHAb7s_avbPA==/270479860449975.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 萨顶顶 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/zDo8F2ivJ5pFZN6i1zH47Q==/18828037114489745.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 梁静茹 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/uyyNRWb4xxuIUv3rak2GGA==/18790653719243846.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 更多... </div>
                        </div>

                    </div>
                </Tab-Pane>
                <Tab-Pane label="乐队组合" style="height:80%;">
                    <div style="margin-left:8%;height:80%;" class="scroll-bar" >
                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/y25QYi-Hgj0CD-DJGSIWWA==/109951163440095910.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 五月天 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/znozXOyHQXRc52hU6UAtmg==/756463999935630.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 苏打绿 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/CBBviK0JkCNoZhO-mcx0Bw==/6620159510950495.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 鹿先森乐队 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/MfsSjK3Kshcq7kxH6GtZzw==/1367792465046812.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 牛奶咖啡 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/Ii8U2ugJxfpWQZvZPZsYwg==/3418381652800638.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 逃跑计划 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/QKu_VxkP3Spi9V5ui6NTKw==/109951163641125492.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> F.I.R. </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/pJf8MVcvxLX6HVRKZlcMOA==/18766464464525837.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Westlife </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/uxUY64QwAiri3NhBicA2fQ==/109951163050440275.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Linkin Park </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/4XM7vLfoSqcVuX7FJZydNw==/109951163251483797.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 好妹妹乐队 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/ss3KHBjwbkDTkUOYQTxWig==/109951163536248233.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Beyond </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/n3sr7bNMdjILj44rYi7Y8g==/18828037115920682.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> OneRepublic </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/VeW5MJ4tV54WP2bMFHHnag==/109951163008253596.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> One Direction </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/AQRVyZMtLy5TUwaAPtlOQw==/399122720888321.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Glee Cast </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/GneY52rqwlkoz8wNsy3rnw==/18570751394187297.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> S.H.E </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/cov8_LYlAczLxqY694HUPQ==/281474976728150.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Queen </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/DpuY1OXXcRRQrTkQZyKD8w==/109951163425899085.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 火箭少女101 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/Un_V9LghpJOrHqbLMuVByw==/109951163202017750.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 南征北战 </div>
                        </div>


                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/ezwY0SNgQYyAIt-YtsqWCA==/109951163353496516.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Maroon 5 </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p4.music.126.net/eL-ft_ucUcby648eVnNewA==/19162288649094558.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> Coldplay </div>
                        </div>

                        <div style="height: 190px;width: 190px;float: left;margin-right:20px">
                            <div>
                                <img style="height:160px;width:160px" src="http://p3.music.126.net/308GUD8s0QN3ZqRrdvARng==/197912093016326.jpg?param=130y130"/></div>
                            <div style="font-size:15px"> 更多... </div>
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
                    time: '03 : 33'
                },
                {
                    name: '爱的重量',
                    singer: '王心凌',
                    album: '爱的重量',
                    time: '03 ：34'
                },
                {
                    name: '陌生的刚好',
                    singer: '习谱予',
                    album: '陌生的刚好',
                    time: '03 : 10'
                },
                {
                    name: '思刻',
                    singer: '赵天宇',
                    album: '局外人',
                    time: '04 : 38'
                },
                {
                    name: '弥留',
                    singer: '伏仪',
                    album: '弥留',
                    time: '05 : 24'
                },
                {
                    name: '白日梦',
                    singer: '武艺',
                    album: '白日梦',
                    time: '03 ：52'
                },
                {
                    name: '双子座(gemini)',
                    singer: '俞赫璇Lovia',
                    album: '双子座',
                    time: '02 ：40'
                },
                {
                    name: '太平桥',
                    singer: '飞石号',
                    album: '太平桥',
                    time: '04 : 27'
                },
                {
                    name: '又是一年寒风起',
                    singer: '樊桐舟',
                    album: '又是一年寒风起',
                    time: '03 ：35'
                },
                {
                    name: '一剑寒霜',
                    singer: '秦子墨',
                    album: '国风美少年 第一期',
                    time: '02 : 11'
                },
                {
                    name: '夜游记',
                    singer: '钢心',
                    album: '夜游记',
                    time: '04 : 45'
                },
                {
                    name: '有你有我',
                    singer: '苏育霆',
                    album: '有你有我',
                    time: '03 ：16'
                },
                {
                    name: '少年依然在',
                    singer: '解忧邵帅',
                    album: '少年依然在',
                    time: '04 : 48'
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
                    name:'一百年很长吗',
                    singer:'赵照'
                },
                {
                    name:'爱之思',
                    singer:'群星'
                },
                {
                    name:'弥留',
                    singer:'伏仪'
                },
                {
                    name:'白日梦',
                    singer:'武艺'
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