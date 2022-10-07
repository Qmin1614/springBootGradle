<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-27
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script>
    function remove(userId) {
        let param = {userId: userId};
        let result = confirm('정말 삭제 하시겠습니까?');
        if (result === true) {
            $.ajax({
                type: 'post',
                url: '<c:url value='/user/delete'/>',
                data: JSON.stringify(param),
                dataType: 'json',
                contentType: 'application/json',
                success: function (postDeleteUserResponse) {
                    if (postDeleteUserResponse.status === 'success') {
                        alert(postDeleteUserResponse.message);
                        window.location.reload();
                    } else {
                        alert(postDeleteUserResponse.message);
                    }
                }, fail: function (request, status, error) {
                    console.log(error);
                }
            });
        }
    }
</script>
<body>
<div style="padding: 70px;">
    <h4>회원 목록</h4>
    <div class="contents">
        <table class="ui celled table compact clickable checkable" style="max-width: 1000px">
            <tr>
                <th>이름</th>
                <th>아이디</th>
                <th>비밀 번호</th>
                <th>회원가입 날짜</th>
                <th>정보 수정 날짜</th>
            </tr>
            <c:choose>
                <c:when test="${fn:length(getReadUserResponse.userList) > 0}">
                    <c:forEach items="${getReadUserResponse.userList}" var="user" varStatus="status">
                        <tr>
                            <td>${user.name}</td>
                            <td>${user.loginId}</td>
                            <td>${user.password}</td>
                            <td>${user.groupId}</td>
                            <td>${user.createDate}</td>
                            <td>${user.updateDate}</td>
                            <td>
                                <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/user/update?userId='/>${user.userId}'">수정</button>
                                <button type="button" class="btn-basic ui button" onclick="remove(${user.userId})">삭제</button>
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
