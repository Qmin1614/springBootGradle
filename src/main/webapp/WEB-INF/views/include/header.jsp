<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-26
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.js"></script>
    <style>
        .layout-top {grid-area: top;}
    </style>
</head>
<div class="head layout-top" id="header">
    <div class="ui secondary  menu">
        <a href=<c:url value="/"/> class="item">Home</a>
        <c:if test="${user != null}">
            <a href=<c:url value="/user/list"/> class="item">회원정보</a>
            <a href=<c:url value="/board/list"/> class="item">게시판</a>
        </c:if>
        <a href=<c:url value="/user/join"/> class="item">회원 가입</a>
        <div class="right menu">
            <c:if test="${user == null}">
                <div style="padding: 30px">
                    <a style="font-size: 15pt" href=<c:url value="/login"/> class="ui item"> Login </a>
                </div>
            </c:if>
            <c:if test="${user != null}">
                <div style="padding: 30px">
                    <a style="font-size: 15pt" href=<c:url value="/logout"/> class="ui item"> logout </a>
                    <div style="font-size: 12pt">
                        <strong>${user.name}</strong>님 환영합니다.
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</div>
