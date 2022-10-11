<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-27
  Time: 오전 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

        let checkps1 = document.getElementById("checkps1").value;
        let checkps2 = document.getElementById("checkps2").value;

        if (checkps1 === checkps2) {
            let password = {"password": checkps1};
            let addFrm = convertFormDataToObject($('#frm'));
            let objAll = {...addFrm, ...password}
            //console.log(objAll);
            if (objAll.name != '관리자') {
                $.ajax({
                    type: 'post',
                    url: '<c:url value='/user/add'/>',
                    data: JSON.stringify(objAll),
                    dataType: 'json',
                    contentType: 'application/json',
                    success: function (postCreateUserResponse) {
                        if (postCreateUserResponse.status === 'success') {
                            alert(postCreateUserResponse.message)
                            location.href = '<c:url value='/'/>';
                        } else {
                            alert("회원 가입에 실패하셨습니다.");
                        }
                    }, fail: function (request, status, error) {
                        console.log(error);
                    }
                });
            } else {
                alert("관리자 이름은 사용할 수 없습니다.")
            }
        } else {
            alert("비밀번호가 서로 다릅니다. 확인해주세요.")
        }
    }
</script>
<body>
<div style="padding: 70px;">
    <h3>회원 가입</h3>
    <div>
        <form id="frm" action="<c:url value='/user/add'/>" method="post">
            <table>
                <tr>
                    <th>이름</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <input type="text" name="name">
                    </div>
                </td>
                <tr>
                    <th>아이디</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <input type="text" name="loginId">
                    </div>
                </td>
                <tr>
                    <th>비밀번호</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <input type="password" id="checkps1">
                    </div>
                </td>
                <tr>
                    <th>비밀번호 확인</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <input type="password" id="checkps2">
                    </div>
                </td>
                <tr>
                    <th>그룹</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <select name="groupId">
                            <option>----그룹 선택----</option>
                            <c:choose>
                                <c:when test="${fn:length(getCreateUserResponse.groupList) > 0}">
                                    <c:forEach items="${getCreateUserResponse.groupList}" var="group" varStatus="status">
                                        <option value="${group.groupId}">${group.name}</option>
                                    </c:forEach>
                                </c:when>
                            </c:choose>
                        </select>
                    </div>
                </td>
            </table>
        </form>
    </div>
    <div>
        <button type="button" class="btn-basic ui button" onclick="add();">
            <p>저장</p>
        </button>
        <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/'/>'">
            <p>홈</p>
        </button>
    </div>
</div>
</body>
</html>
