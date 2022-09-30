<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-30
  Time: 오전 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h4>게시판 목록</h4>
<c:if test="${member != null}">
<div>
    <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/board/add'/>'">글쓰기</button>
</div>
</c:if>
<div class="contents">
    <table class="ui celled table compact clickable checkable" style="max-width: 1000px">
        <tr>
            <th>제목</th>
            <th>닉네임</th>
            <th>작성일</th>
        </tr>
        <c:choose>
            <c:when test="${fn:length(getReadBoardResponse.boardList) > 0}">
                <c:forEach items="${getReadBoardResponse.boardList}" var="board" varStatus="status">
                    <tr>
                        <td>${board.title}</td>
                        <td>${board.nickName}</td>
                        <td>${board.createDate}</td>
                        <c:out value="${member.name}"/>
                        <c:out value="${board.nickName}"/>
                        ===========================
                        <c:if test="'${member.name}' == '${board.nickName}'">
                            <td>
                                <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/board/update?boardId='/>${board.boardId}'">수정</button>
                                <button type="button" class="btn-basic ui button" onclick="remove(${board.boardId})">삭제</button>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </c:when>
        </c:choose>
    </table>
</div>
</body>
</html>
