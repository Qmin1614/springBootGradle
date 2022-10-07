<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-10-06
  Time: 오후 5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="padding: 70px;">
    <h4>그룹</h4>
    <c:if test="${user.name eq '관리자'}">
        <div>
            <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/group/add'/>'">그룹 추가</button>
        </div>
    </c:if>
    <div class="contents">
        <table class="ui celled table compact clickable checkable" style="max-width: 1000px">
            <tr>
                <th>그룹 이름</th>
                <th>도메인</th>
                <th>설명</th>
                <th>생성일</th>
                <c:if test="${user.name eq '관리자'}">
                    <th>관리</th>
                </c:if>
            </tr>
            <c:choose>
                <c:when test="${fn:length(getReadGroupResponse.groupList) > 0}">
                    <c:forEach items="${getReadGroupResponse.groupList}" var="group" varStatus="status">
                        <tr>
                            <td>${group.name}</td>
                                <c:choose>
                                    <c:when test="${fn:length(getReadGroupResponse.domainList) > 0}">
                                        <c:forEach items="${getReadGroupResponse.domainList}" var="domain" varStatus="status">
                                            <c:if test="${group.domainId eq domain.domainId}">
                                                <td>${domain.name}</td>
                                            </c:if>
                                        </c:forEach>
                                    </c:when>
                                </c:choose>
                            <td>${group.description}</td>
                            <td>${group.createDate}</td>
                            <td>
                                <c:if test="${user.name eq '관리자'}">
                                    <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/group/update?groupId='/>${group.groupId}'">수정</button>
                                    <button type="button" class="btn-basic ui button" onclick="remove(${group.groupId})">삭제</button>
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
