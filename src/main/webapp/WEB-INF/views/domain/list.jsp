<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-10-06
  Time: 오후 5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="padding: 70px;">
    <h4>도메인</h4>
    <c:if test="${user.name eq '관리자'}">
        <div>
            <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/domain/add'/>'">도메인 추가</button>
        </div>
    </c:if>
    <div class="contents">
        <table class="ui celled table compact clickable checkable" style="max-width: 1000px">
            <tr>
                <th>도메인 이름</th>
                <th>설명</th>
                <th>생성일</th>
                <c:if test="${user.name eq '관리자'}">
                    <th>글관리</th>
                </c:if>
            </tr>
            <c:choose>
                <c:when test="${fn:length(getReadDomainResponse.domainList) > 0}">
                    <c:forEach items="${getReadDomainResponse.domainList}" var="domain" varStatus="status">
                        <tr>
                            <td>${domain.name}</td>
                            <td>${domain.description}</td>
                            <td>${domain.createDate}</td>
                            <td>
                                <c:if test="${user.name eq '관리자'}">
                                    <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/domain/update?domainId='/>${domain.domainId}'">수정</button>
                                    <button type="button" class="btn-basic ui button" onclick="remove(${domain.domainId})">삭제</button>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
            </c:choose>
        </table>
    </div>
</div>
</body>
</html>
