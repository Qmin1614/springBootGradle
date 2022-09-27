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

    function update(id) {

    }

</script>
<body>
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
            <c:when test="${fn:length(getReadMemberResponse.memberList) > 0}">
                <c:forEach items="${getReadMemberResponse.memberList}" var="member" varStatus="status">
                    <tr>
                        <th>${member.name}</th>
                        <th>${member.loginId}</th>
                        <th>${member.password}</th>
                        <th>${member.createDate}</th>
                        <th>${member.updateDate}</th>
                        <th>
                            <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/member/update?id='/>${member.id}'">수정</button>
                            <button type="button" class="btn-basic ui button" onclick="delete(${member.id});">삭제</button>
                        </th>
                    </tr>
                </c:forEach>
            </c:when>
        </c:choose>
    </table>
</div>
</body>
</html>
