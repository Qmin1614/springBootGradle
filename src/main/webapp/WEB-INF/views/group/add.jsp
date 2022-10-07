<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                url: '<c:url value='/group/add'/>',
                data: JSON.stringify(convertFormDataToObject($('#frm'))),
                dataType: 'json',
                contentType: 'application/json',
                success: function (postCreateGroupResponse) {
                    if (postCreateGroupResponse.status === 'success') {
                        alert(postCreateGroupResponse.message)
                        location.href='<c:url value='/group/list'/>';
                    } else {
                        alert("그룹 등록에 실패하셨습니다.");
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
        <form id="frm" action="<c:url value='/group/add'/>" method="post">
            <table>
                <tr>
                    <th>그룹 이름</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <input class="ui input" type="text" name="name">
                    </div>
                </td>
                <tr>
                    <th>도메인</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <select name="domainId">
                            <option>----도메인 선택----</option>
                            <c:choose>
                                <c:when test="${fn:length(getReadDomainResponse.domainList) > 0}">
                                    <c:forEach items="${getReadDomainResponse.domainList}" var="domain" varStatus="status">
                                        <option value="${domain.domainId}">${domain.name}</option>
                                    </c:forEach>
                                </c:when>
                            </c:choose>
                        </select>
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
        <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/group/list'/>'">
            <p>목록</p>
        </button>
    </div>
</div>
</body>
</html>
