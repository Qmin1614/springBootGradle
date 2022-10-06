<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-10-06
  Time: 오전 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        function convertFormDataToObject(form) {
            var ary = form.serializeArray();
            var object = {};
            for (var i = 0; i < ary.length; i++) {
                object[ary[i]['name']] = ary[i]['value'];
            }
            return object;
        }

        function update() {
            console.log(convertFormDataToObject($('#frm')));
            $.ajax({
                type: 'post',
                url: '<c:url value='/board/update'/>',
                data: JSON.stringify(convertFormDataToObject($('#frm'))),
                dataType: 'json',
                contentType: 'application/json',
                success: function (postUpdateBoardResponse) {
                    if (postUpdateBoardResponse.status === 'success') {
                        alert(postUpdateBoardResponse.message)
                        location.href='<c:url value='/board/list'/>';
                    } else {
                        alert("글 수정에 실패하셨습니다.");
                    }
                }, fail: function (request, status, error) {
                    console.log(error);
                }
            });
        }
    </script>
</head>
<body>
<div>
    <div>
        <form id="frm" action="<c:url value='/member/update'/>" method="post">
            <input type="hidden" name="boardId" value="${getUpdateBoardResponse.board.boardId}">
            <table>
                <tr>
                    <th>닉네임</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="text" name="nickName" value="${getUpdateBoardResponse.board.nickName}" readonly>
                        </label>
                    </div>
                </td>
                <tr>
                    <th>제목</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="text" name="title" value="${getUpdateBoardResponse.board.title}">
                        </label>
                    </div>
                </td>
                <tr>
                    <th>내용</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <textarea type="text" name="content">${getUpdateBoardResponse.board.content}</textarea>
                        </label>
                    </div>
                </td>
            </table>
        </form>
    </div>
    <div>
        <button type="button" class="btn-basic ui button" onclick="update();">
            <p>저장</p>
        </button>
        <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/board/list'/>'">
            <p>목록</p>
        </button>
    </div>
</div>
</body>
</html>
