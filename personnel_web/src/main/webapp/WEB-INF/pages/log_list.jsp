<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${TYPE} Log</title>
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

<body>
<div id="right_container">
    <div class="right_m">
        <div class="list_container">
            <div class="list_title">
                <span class="name">${TYPE} Log</span>
            </div>
            <div class="list_table">&nbsp;</div>
            <table cellpadding="0" cellspacing="0" class="list_hy">
                <tr>
                    <th scope="col">Operate Time</th>
                    <th scope="col">Operator</th>
                    <th scope="col">Module</th>
                    <th scope="col">Operation</th>
                    <th scope="col">Result</th>
                </tr>
                <c:forEach items="${LOGLIST}" var="log">
                    <tr>
                        <td><fmt:formatDate value="${log.operateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${log.operator}</td>
                        <td>${log.module}</td>
                        <td>${log.operation}</td>
                        <td>${log.result}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
