<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>WorkWise Html Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link rel="stylesheet" type="text/css" href="../../css/animate.css">
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-4.2.1.css">
    <link rel="stylesheet" type="text/css" href="../../css/line-awesome.css">
    <link rel="stylesheet" type="text/css" href="../../css/line-awesome-font-awesome.min.css">
    <link rel="stylesheet" href="https://www.jq22.com/jquery/font-awesome.4.7.0.css">
    <link rel="stylesheet" type="text/css" href="../../lib/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="../../lib/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="../../css/style.css">
    <link rel="stylesheet" type="text/css" href="../../css/responsive.css">
</head>
<style>
    .yzm,.yzm:visited,.yzm:link,.yzm:hover{
        top: 12px;
        right: 12px;
        position: absolute;
        font-size: 15px;
        color: #a5ba4a;
        text-decoration: none;
    }
    #canvas {
        float: right;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 5px;
        cursor: pointer;
    }
    .code {
        padding-top: 4px;
        width: 400px;
        margin: 0 auto;
    }
</style>
<body class="sign-in">
<div class="wrapper">
    <div class="sign-in-page">
        <div class="signin-popup">
            <div class="signin-pop">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="cmp-info">
                            <div class="cm-logo">
                                <img src="images/cm-logo.png" alt="">
                                <p>在工作方面，是一个全球自由职业者平台和社交网络，在这里企业和独立的专业人士可以远程联系和协作</p>
                            </div><!--cm-logo end-->
                            <img src="images/cm-main-img.png" alt="">
                        </div><!--cmp-info end-->
                    </div>
                    <div class="col-lg-6">
                        <div class="login-sec">
                            <ul class="sign-control">
                                <li data-tab="tab-1" class="current"><a href="#" title="">登录</a></li>
                                <li data-tab="tab-2"><a href="#" title="">注册</a></li>
                            </ul>
                            <div class="sign_in_sec current" id="tab-1">

                                <h3>登录</h3>
                                <form id="denglu" action="/dengluyz.do" method="post">
                                    <div class="row">
                                        <div class="col-lg-12 no-pdd">
                                            <div class="sn-field">
                                                <input type="text" name="dlphone" placeholder="手机号">
                                                <i class="la la-user"></i>
                                            </div><!--sn-field end-->
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <div class="sn-field">
                                                <input type="password" name="dlpassword" placeholder="密码">
                                                <i class="la la-lock"></i>
                                            </div>
                                        </div>
                                        <div class="code">
                                            <input type="text" style="width: 60%;padding: 0 15px 0 40px" value="" name="dlyzm" placeholder="请输入验证码" class="input-val"/>
                                            <canvas id="canvas" width="100" height="43"></canvas>
                                            <i class="la la-dropbox" style="position: absolute;left: 75px;top: 70%;color: #b2b2b2;"></i>
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <button type="submit" value="submit" style="margin-left: 90px" class="btn">登录</button>
                                        </div>
                                    </div>
                                </form>
                            </div><!--sign_in_sec end-->
                            <div class="sign_in_sec" id="tab-2">
                                <div class="dff-tab current" id="tab-3">
                                    <form id="zhuce" action="/zhuce.do" method="post">
                                        <div class="row">
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="text" name="zcphone" placeholder="请输入手机号">
                                                    <i class="la la-user"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="text" name="zcyzm" placeholder="请输入验证码">
                                                    <i class="la la-dropbox"></i>
                                                    <a class="yzm" href="#">获取验证码</a>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="text" name="zcnickName" placeholder="请输入昵称">
                                                    <i class="la la-user"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="password" name="zcpassword" placeholder="请输入密码">
                                                    <i class="la la-lock"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="password" name="zcpassword1" placeholder="请确认密码">
                                                    <i class="la la-lock"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <button type="submit" value="submit" style="margin-left: 90px">注册</button>
                                            </div>
                                        </div>
                                    </form>
                                </div><!--dff-tab end-->
                            </div>
                        </div><!--login-sec end-->
                    </div>
                </div>
            </div><!--signin-pop end-->
        </div><!--signin-popup end-->
        <div class="footy-sec">
            <div class="container">
                <ul style="margin-left: 220px">
                    <li><a href="#" title="">帮助中心</a></li>
                    <li><a href="#" title="">隐私政策</a></li>
                    <li><a href="#" title="">社区准则</a></li>
                    <li><a href="#" title="">Cookies政策</a></li>
                    <li><a href="#" title="">事业</a></li>
                    <li><a href="#" title="">论坛</a></li>
                    <li><a href="#" title="">语言</a></li>
                    <li><a href="#" title="">版权政策</a></li>
                </ul>
                <p style="margin-right: 150px"><img src="images/copy-icon.png" alt="" >版权 2018</p>
            </div>
        </div><!--footy-sec end-->
    </div><!--sign-in-page end-->


</div><!--theme-layout end-->

<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../../js/popper.js"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../lib/slick/slick.min.js"></script>
<script type="text/javascript" src="../../js/script.js"></script>
<script type="text/javascript" src="../../js/code.js"></script>
<script>
    $(function() {
        //正则表达式手机号
        var zhengzephone=/^1[3|4|5|7|8][0-9]{9}$/;
        //正则表达式密码（6-18位，需包含数字和字母）
        var zhengzepassword=/^(?![a-zA-Z]+$)(?![0-9]+$)[A-Za-z0-9]{8,18}$/;
        /* -------------验证码插件-----------*/
        code_draw();
        // 点击后刷新验证码
        $("#canvas").on('click', function() {
            code_draw();
        })
       /*-------------登录表单验证-----------*/
        var yzdlphone=false;
        var yzdlpassword=false;
        var yzdlyzm=false;
        //登录手机号验证
        $("[name='dlphone']").blur(function () {
            //登录手机号获取值
            var dlphone = $("[name='dlphone']").val().trim();
            if(dlphone==""){
                alert('请输入手机号！');
                yzdlphone=false;
                return false;
            }
            if(!zhengzephone.test(dlphone)){
                alert('手机号格式不正确,请输入正确的11位手机号！');
                yzdlphone=false;
                return false;
            }else{
                yzdlphone=true;
            }
        })
        $("[name='dlpassword']").blur(function () {
            //登录密码获取值
            var dlpassword=$("[name='dlpassword']").val().trim();
            if(dlpassword==''){
                alert('密码不能为空！');
                yzdlpassword=false;
                return false;
            }else if(!zhengzepassword.test(dlpassword)){
                alert('密码必须为6-18位的字母+数字组合,请重新输入！')
                yzdlpassword=false;
                return false;
            }else{
                yzdlpassword=true;
            }
        })
        $("[name='dlyzm']").blur(function () {
            //验证码验证
            // 将输入的内容转为大写，可通过这步进行大小写验证
            var val = $(".input-val").val().toLowerCase();
            // 获取生成验证码值
            var num = $('#canvas').attr('data-code');
            if (val == '') {
                alert('请输入验证码！');
                yzdlyzm = false;
                return false;
            } else if (val != num) {
                alert('验证码错误！请重新输入！');
                yzdlyzm = false;
                return false;
            } else {
                yzdlyzm = true;
            }
        })
        $("#denglu").submit(function () {
            if(yzdlphone==false){
                alert('请更正手机号！');
                return false;
            }
            if(yzdlpassword==false){
                alert('请更正密码！');
                return false;
            }
            if(yzdlyzm==false){
                alert('请更正验证码！');
                return false;
            }
            return true;
        })

        /*-------------注册表单验证-----------*/
        var yzzcphone=false;
        var yzzcyzm=false;
        var yzzcnickName=false;
        var yzzcpassword=false;
        var yzzcpassword1=false;

        //注册手机号验证
        $("[name='zcphone']").blur(function () {
            //注册手机号获取值
            var zcphone = $("[name='zcphone']").val().trim();
            if(zcphone==""){
                alert('请输入手机号！');
                yzzcphone=false;
                return false;
            }
            if(!zhengzephone.test(zcphone)){
                alert('手机号格式不正确,请输入正确的11位手机号！');
                yzzcphone=false;
                return false;
            }else{
                yzzcphone=true;
            }
        })
        $("[name='zcnickName']").blur(function () {
            //注册昵称获取值
            var zcnickName = $("[name='zcnickName']").val().trim();
            if(zcnickName==""){
                alert('请输入昵称！');
                yzzcnickName=false;
                return false;
            }else{
                yzzcnickName=true;
            }
        })
        $("[name='zcpassword']").blur(function () {
            //登录密码获取值
            var zcpassword=$("[name='zcpassword']").val().trim();
            if(zcpassword==''){
                alert('密码不能为空！');
                yzzcpassword=false;
                return false;
            }else if(!zhengzepassword.test(zcpassword)){
                alert('密码必须为6-18位的字母+数字组合,请重新输入！')
                yzzcpassword=false;
                return false;
            }else{
                yzzcpassword=true;
            }
        })
        $("[name='zcpassword1']").blur(function () {
            var zcpassword1=$("[name='zcpassword1']").val().trim();
            var zcpassword=$("[name='zcpassword']").val().trim();
            if(zcpassword1==''){
                alert('确认密码不能为空！');
                yzzcpassword1=false;
                return false;
            }else if(zcpassword1!=zcpassword){
                alert('两次密码不一致,请重新输入！')
                yzzcpassword1=false;
                return false;
            }else{
                yzzcpassword1=true;
            }
        })
        $("#zhuce").submit(function () {
            if(yzzcphone==false){
                alert('请更正手机号！');
                return false;
            }
            if(yzzcpassword==false){
                alert('请更正密码！');
                return false;
            }
            if(yzzcpassword1==false){
                alert('请更正确认密码！');
                return false;
            }
            if(yzzcnickName==false){
                alert('请更正昵称！');
                return false;
            }
            return true;
        })
    })
</script>
</body>
</html>