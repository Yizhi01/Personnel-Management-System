<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/thems.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <!--Framework size configuration-->
    <script type="text/javascript">
        $(function(){
            window.onresize=function(){ location=location };

            var w_height=$(window).height();
            $('.bg_img').css('height',w_height+'px');

            var bg_wz=1920-$(window).width();
            $('.bg_img img').css('margin-left','-'+bg_wz/2+'px')

            $('.language .lang').click(function(){
                $(this).siblings('.lang_ctn').toggle();
            });
        })
    </script>
</head>

<body>
<!-- Login -->
<div class="login">
    <div class="bg_img"><img src="${pageContext.request.contextPath}/images/login_bg.jpg"/></div>
    <div class="logo">
        <a href=""><img src="${pageContext.request.contextPath}/images/my_logo.png" alt=""/></a>
    </div>
    <div class="login_m">
        <form action="login.do" method="post" name="login_form">
            <ul>
                <li class="wz">Account Name</li>
                <li><input name="account" type="text"></li>
                <li class="wz">Password</li>
                <li><input name="password" type="password"></li>
                <li class="l_btn">
                    <a href="javascript:login_form.submit();">Login</a>
                </li>
            </ul>
        </form>
    </div>
</div>
</body>
</html>
