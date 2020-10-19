<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=8" >
    <title>Profile</title>
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

<body>
<div id="right_container">
    <div class="right_m">
        <div class="list_container">
            <div class="list_title">
                <span class="name">Profile</span>
            </div>
            <div class="list_table">&nbsp;</div>
                <div class="list_content">
                    <ul class="list_items items_setting clearfix">
                        <li class="clearfix">
                            <span class="title">Account Name: </span>
                            <div class="col_r">${USER.account}</div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Status: </span>
                            <div class="col_r">${USER.status}</div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Department: </span>
                            <div class="col_r">${USER.department.name}</div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Full Name: </span>
                            <div class="col_r">${USER.name}</div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Sex: </span>
                            <div class="col_r">${USER.sex}</div>
                        </li>
                        <li class="clearfix">
                            <span class="title">ID Number: </span>
                            <div class="col_r">${USER.idNumber}</div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Birthday: </span>
                            <div class="col_r"><fmt:formatDate value="${USER.birthday}" pattern="yyyy-MM-dd"/></div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Work Time: </span>
                            <div class="col_r"><fmt:formatDate value="${USER.workTime}" pattern="yyyy-MM-dd"/></div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Leave Time: </span>
                            <div class="col_r"><fmt:formatDate value="${USER.leaveTime}" pattern="yyyy-MM-dd"/></div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Other Info: </span>
                            <div class="col_r">${USER.info}</div>
                        </li>
                    </ul>
                </div>
        </div>
    </div>
</div>
</body>
</html>

