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
<head>
    <script>
        function remove(boardId) {
            let isDelete = confirm("정말 삭제하시겠습니까?");
            let param = {boardId: boardId};
            if(isDelete) {
                $.ajax({
                    type: 'post',
                    url: '<c:url value='/board/delete'/>',
                    data: JSON.stringify(param),
                    dataType: 'json',
                    contentType: 'application/json',
                    success: function (postDeleteBoardResponse) {
                        if (postDeleteBoardResponse.status === 'success') {
                            alert(postDeleteBoardResponse.message);
                            window.location.reload();
                        } else {
                            alert("글등록에 실패하였습니다.")
                        }
                    }, fail: function (request, status, error) {
                        console.log(error);
                    }
                });
            }
        }
    </script>
</head>
<body>
<h4>게시판 목록</h4>
<c:if test="${member != null}">
    <div>
        <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/board/add'/>'">글쓰기
        </button>
    </div>
</c:if>
<div class="contents">
    <table class="ui celled table compact clickable checkable" style="max-width: 1000px">
        <tr>
            <th>제목</th>
            <th>닉네임</th>
            <th>작성일</th>
            <c:if test="${member != null}">
                <th>글관리</th>
            </c:if>
        </tr>
        <c:choose>
            <c:when test="${fn:length(getReadBoardResponse.boardList) > 0}">
                <c:forEach items="${getReadBoardResponse.boardList}" var="board" varStatus="status">
                    <tr>
                        <td>${board.title}</td>
                        <td>${board.nickName}</td>
                        <td>${board.createDate}</td>
                        <td>
                            <c:if test="${member.name eq board.nickName}">
                                <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/board/update?boardId='/>${board.boardId}'">수정</button>
                                <button type="button" class="btn-basic ui button" onclick="remove(${board.boardId})">삭제</button>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </c:when>
        </c:choose>
    </table>
</div>
</body>
</html>