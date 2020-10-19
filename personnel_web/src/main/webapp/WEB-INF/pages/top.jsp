<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Top</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
</head>

<body>
<div class="head clearfix">
    <div class="logo"><a href="#"><img src="${pageContext.request.contextPath}/images/my_logo.png" alt="logo image"/></a></div>
    <div class="curr"><span>Welcome, ${USER.name}[ <a href="logout.do" target="_top">Sign out</a> ]</span></div>
</div>
</body>
</html>

