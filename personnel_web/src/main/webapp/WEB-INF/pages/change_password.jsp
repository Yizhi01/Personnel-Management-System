<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=8" >
    <title>Change Password</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/thems.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function(){
            window.onresize=function(){ location=location };

            var main_h = $(window).height();
            $('.list_container').css('height',main_h-45+'px');

            var main_w = $(window).width();
            $('.list_content').css('width',main_w-40+'px');

        });
    </script>
</head>

<body onLoad="Resize();">
<div id="right_container">
    <div class="right_m">
        <div class="list_container">
            <div class="list_title">
                <span class="name">Change Password</span>
            </div>
            <div class="list_table">&nbsp;</div>
            <form action="changePassword.do" method="post" name="addForm">
                <div class="list_content">
                    <ul class="list_items items_setting clearfix">
                        <li class="clearfix">
                            <span class="title">Account Name: </span>
                            <div class="col_r">${USER.account}</div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Original Password: </span>
                            <div class="col_r">
                                <input class="chang" name="password" type="password">
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">New Password: </span>
                            <div class="col_r">
                                <input class="chang" name="password1" type="password">
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Confirm Password: </span>
                            <div class="col_r">
                                <input class="chang" name="password2" type="password">
                            </div>
                        </li>
                        <li>${msg}</li>
                        <li class="tj_btn">
                            <a href="javascript:history.go(-1);" class="back">Back</a>
                            <a href="javascript:addForm.submit();">Save</a>
                        </li>
                    </ul>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

