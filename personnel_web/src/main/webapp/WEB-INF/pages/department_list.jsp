<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Department List</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/thems.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function(){
            window.onresize=function(){ location=location };

            var main_h = $(window).height();
            $('.list_container').css('height',main_h-45+'px');

            var search_w = $(window).width()-40;
            $('.search').css('width',search_w+'px');
        });
    </script>
</head>

<body onLoad="Resize();">
<div id="right_container">
    <div class="right_m">
        <div class="list_container">
            <div class="list_title">
                <span class="name">Department List</span>
            </div>
            <div class="list_table">&nbsp;</div>
            <table cellpadding="0" cellspacing="0" class="list_hy">
                <tr>
                    <th scope="col">Department Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">Operation</th>
                </tr>
                <c:forEach items="${DEPLIST}" var="dep">
                    <tr>
                        <td>${dep.name}</td>
                        <td>${dep.address}</td>
                        <td>
                            <a href="toEdit.do?id=${dep.id}" class="btn">Edit</a>
                            <a href="remove.do?id=${dep.id}" class="btn">Remove</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
            <div class="r_foot">
                <div class="r_foot_m">
                    <a href="toAdd.do" class="btn">Add</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
