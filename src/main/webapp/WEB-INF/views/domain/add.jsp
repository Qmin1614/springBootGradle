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
                url: '<c:url value='/domain/add'/>',
                data: JSON.stringify(convertFormDataToObject($('#frm'))),
                dataType: 'json',
                contentType: 'application/json',
                success: function (postCreateDomainResponse) {
                    if (postCreateDomainResponse.status === 'success') {
                        alert(postCreateDomainResponse.message)
                        location.href='<c:url value='/domain/list'/>';
                    } else {
                        alert("도메인 등록에 실패하셨습니다.");
                    }
                }, fail: function (request, status, error) {
                    console.log(error);
                }
            });
        }
    </script>
</head>
<body>
<div style="padding: 70px;">
    <h2>글쓰기</h2>
    <div>
        <form id="frm" action="<c:url value='/user/add'/>" method="post">
            <table>
                <tr>
                    <th>도메인 이름</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <input class="ui input" type="text" name="name">
                    </div>
                </td>
                <tr>
                    <th>설명</th>
                </tr>
                <td>
                    <div>
                        <textarea type="text" name="description" style="border: grey; min-height: 300px; min-width: 600px;"></textarea>
                    </div>
                </td>
            </table>
        </form>
    </div>
    <div>
        <button type="button" class="btn-basic ui button" onclick="add();">
            <p>저장</p>
        </button>
        <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/domain/list'/>'">
            <p>목록</p>
        </button>
    </div>
</div>
</body>
</html>
