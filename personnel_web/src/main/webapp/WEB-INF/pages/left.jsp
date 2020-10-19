<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=8" >
    <title>Left Navigation</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <!--Frame size configuration-->
    <script type="text/javascript">
        $(function(){
            $('.sidenav li').click(function(){
                $(this).siblings('li').removeClass('now');
                $(this).addClass('now');
            });

            $('.submenu li').click(function(){
                $(this).siblings('li').removeClass('now_li');
                $(this).addClass('now_li');
            });

            var main_h = $(window).height();
            $('.sidenav').css('height',main_h+'px');
        })
    </script>
</head>

<body>
<div id="left_ctn">
    <ul class="sidenav">
        <li>
            <div class="nav_m">
                <span><a>Personnel Management System</a></span>
                <i>&nbsp;</i>
            </div>
            <ul class="submenu">
                <li>
                    <span><a href="staff/list.do" target="main">Staff</a></span>
                </li>
                <li>
                    <span><a href="department/list.do" target="main">Departments</a></span>
                </li>
            </ul>
        </li>
        <li>
            <div class="nav_m">
                <span><a>Log Information</a></span>
                <i>&nbsp;</i>
            </div>
            <ul class="submenu">
                <li>
                    <span><a href="log/operationLog.do" target="main">Operation Log</a></span>
                </li>
                <li>
                    <span><a href="log/loginLog.do" target="main">Login Log</a></span>
                </li>
                <li>
                    <span><a href="log/systemLog.do" target="main">System Log</a></span>
                </li>
            </ul>
        </li>
        <li class="now">
            <div class="nav_m">
                <span><a>My Account</a></span>
                <i>&nbsp;</i>
            </div>
            <ul class="submenu">
                <li>
                    <span><a href="self/info.do" target="main">Profile</a></span>
                </li>
                <li>
                    <span><a href="self/toChangePassword.do" target="main">Change Password</a></span>
                </li>
            </ul>
        </li>
        <li>
            <div class="nav_m">
                <span><a href="logout.do" target="_top">Sign Out</a></span>
            </div>
        </li>
    </ul>
</div>
</body>
</html>

