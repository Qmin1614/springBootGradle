<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-30
  Time: 오전 11:29
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

        function add() {
            console.log(convertFormDataToObject($('#frm')));
            $.ajax({
                type: 'post',
                url: '<c:url value='/board/add'/>',
                data: JSON.stringify(convertFormDataToObject($('#frm'))),
                dataType: 'json',
                contentType: 'application/json',
                success: function (postCreateBoardResponse) {
                    if (postCreateBoardResponse.status === 'success') {
                        alert(postCreateBoardResponse.message)
                        location.href='<c:url value='/board/list'/>';
                    } else {
                        alert("글 등록에 실패하셨습니다.");
                    }
                }, fail: function (request, status, error) {
                    console.log(error);
                }
            });
        }
    </script>
</head>
<body>
<h2>글쓰기</h2>
<div>
    <div>
        <form id="frm" action="<c:url value='/member/add'/>" method="post">
            <table>
                <tr>
                    <th>닉네임</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="text" name="nickName" value="${member.name}" disabled>
                        </label>
                    </div>
                </td>
                <tr>
                    <th>제목</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="text" name="title">
                        </label>
                    </div>
                </td>
                <tr>
                    <th>내용</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <textarea type="text" name="content"></textarea>
                        </label>
                    </div>
                </td>
            </table>
        </form>
    </div>
    <div>
        <button type="button" class="btn-basic ui button" onclick="add();">
            <p>저장</p>
        </button>
    </div>
</div>
</body>
</html>
