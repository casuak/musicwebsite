<html>
<head>
<style>
    #top {
        display: block;
        width: 100%;
        padding: 0px;
        margin: 0px;
        /*border: 2px solid green;*/
        height: 40px;
        position: fixed;
        top: 0px;
        background: #ff8c6f;
    }

    #bottom {
        display: block;
        width: 100%;
        padding: 0px;
        margin: 0px;
        /*border: 2px solid red;*/
        height: 75px;
        position: fixed;
        bottom: 0px;
        background: #75be72;
    }

    #middle{
        display: block;
        width: 100%;
        height: calc(100% - 40px - 75px);
        margin-top: 40px;
        background: red;
    }

    #left {
        display: block;
        float: left;
        background: rgba(128, 128, 128, 0.59);
        width: 240px;
        height: 100%;
    }

    #right {
        display: block;
        float: left;
        left: 240px;
        width: calc(100% - 240px);
        background: rgba(154, 205, 50, 0.51);
        height: 100%;
    }

    body{
        padding: 0px;
        margin: 0px;
    }

    iframe{
        margin: 0px;
        padding: 0px;
        border: 0px;
    }
</style>
</head>
<body>
<iframe id="top" src="/main_blocks/top" frameborder="0"></iframe>
<div id="middle">
    <iframe id="left" src="/main_blocks/left" frameborder="0"></iframe>
    <iframe id="right" src="/main_blocks/right" frameborder="0"></iframe>
</div>
<iframe id="bottom" src="/main_blocks/bottom" frameborder="no"></iframe>
</body>
</html>