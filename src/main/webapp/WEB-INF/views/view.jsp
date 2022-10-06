<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-26
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <style>
        .layout {height: 100vh; display: grid; grid-template-rows: 55px calc(100vh - 55px); grid-template-areas: "top" "bottom"}
    </style>
</head>
<body>
<div class="layout">
    <!-- header -->
    <c:import url="include/header.jsp"/>
    <!-- body -->

    <!-- left -->

    <!-- content -->
    <div class="ui basic main">
        <c:import url="${main}.jsp"/>
    </div>
    <!-- footer -->
    <c:import url="include/footer.jsp"/>
</div>
</body>
</html>
