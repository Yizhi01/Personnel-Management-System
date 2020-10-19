<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=8" >
    <title>Edit Staff</title>
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
                <span class="name">Edit Staff</span>
            </div>
            <div class="list_table">&nbsp;</div>
            <form action="edit.do" method="post" name="addForm">
                <input name="id" type="hidden" value="${STAFF.id}">
                <div class="list_content">
                    <ul class="list_items items_setting clearfix">
                        <li class="clearfix">
                            <span class="title">Account Name: </span>
                            <div class="col_r">
                                <input class="chang" name="account" type="text" value="${STAFF.account}" readonly/>
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Department: </span>
                            <div class="col_r">
                                <select name="did">
                                    <c:forEach items="${DEPLIST}" var="dep">
                                        <c:if test="${STAFF.did==dep.id}">
                                            <option value="${dep.id}" selected="selected">${dep.name}</option>
                                        </c:if>
                                        <c:if test="${STAFF.did!=dep.id}">
                                            <option value="${dep.id}">${dep.name}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                                <i>*</i>
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Full Name: </span>
                            <div class="col_r">
                                <input class="chang" name="name" type="text" value="${STAFF.name}" />
                                <i>*</i>
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Sex: </span>
                            <div class="col_r">
                                <span class="radio">
                                    <input checked="checked" name="sex" type="radio" value="male"/>
                                    <em>Male</em>
                                </span>
                                <c:if test="${STAFF.sex == 'female'}">
                                    <span class="radio">
                                        <input name="sex" type="radio" value="female" checked="checked"/>
                                        <em>Female</em>
                                    </span>
                                </c:if>
                                <c:if test="${STAFF.sex != 'female'}">
                                    <span class="radio">
                                        <input name="sex" type="radio" value="female" />
                                        <em>Female</em>
                                    </span>
                                </c:if>
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">ID Number: </span>
                            <div class="col_r">
                                <input class="chang" name="idNumber" type="text" value="${STAFF.idNumber}">
                                <i>*</i>
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Birthday: </span>
                            <div class="col_r">
                                <input class="chang" name="birthday" type="text" value="<fmt:formatDate value="${STAFF.birthday}" pattern="yyyy-MM-dd"/>">
                                <i>*</i>
                            </div>
                        </li>
                        <li class="clearfix">
                            <span class="title">Other Info: </span>
                            <div class="col_r">
                                <input class="chang" name="info" type="text" value="${STAFF.info}">
                                <i>*</i>
                            </div>
                        </li>

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

