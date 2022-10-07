<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-27
  Time: 오후 5:35
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

    function update() {

        let checkps1 = document.getElementById("checkps1").value;
        let checkps2 = document.getElementById("checkps2").value;

        if(checkps1 === checkps2) {
            let password = {"password": checkps1};
            let addFrm = convertFormDataToObject($('#frm'));
            let objAll = {...addFrm, ...password}
            //console.log(objAll);
            $.ajax({
                type: 'post',
                url: '<c:url value='/user/update'/>',
                data: JSON.stringify(objAll),
                dataType: 'json',
                contentType: 'application/json',
                success: function (postUpdateUserResponse) {
                    if (postUpdateUserResponse.status === 'success') {
                        alert(postUpdateUserResponse.message)
                        location.href='<c:url value='/user/list'/>';
                    } else {
                        alert("회원 수정에 실패하셨습니다.");
                    }
                }, fail: function(request, status, error) {
                    console.log(error);
                }
            });
        } else {
            alert("비밀번호가 서로 다릅니다. 확인해주세요.")
        }
    }

</script>
<body>
<div style="padding: 70px;">
    <h4>회원 정보 수정</h4>
    <div class="contents">
        <form id="frm" action="<c:url value='/user/update'/>" method="post">
            <input class="ui input" type="hidden" name="id" value="${getUpdateUserResponse.user.userId}">
            <table class="ui celled table compact clickable checkable" style="max-width: 500px">
                <tr>
                    <th>이름</th>
                    <td>
                        <div class="ui input">
                            <input type="text" id="name" name="name" value="${getUpdateUserResponse.user.name}">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>아이디</th>
                    <td>
                        <div class="ui input">
                            <input type="text" id="loginId" name="loginId" value="${getUpdateUserResponse.user.loginId}">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>비밀 번호</th>
                    <td>
                        <div class="ui input">
                            <input type="text" id="checkps1" value="${getUpdateUserResponse.user.password}">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>비밀 번호 확인</th>
                    <td>
                        <div class="ui input">
                            <input type="text" id="checkps2">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>팀</th>
                </tr>
                <td>
                    <div class="ui input" style="width: 600px;">
                        <input type="text" name="groupId" value="${getUpdateUserResponse.user.groupId}">
                    </div>
                </td>
            </table>
        </form>
    </div>
    <div>
        <button type="button" class="btn-basic ui button" onclick="update();">
            <p>저장</p>
        </button>
        <button type="button" class="btn-basic ui button" onclick="location.href='<c:url value='/user/list'/>'">
            <p>목록</p>
        </button>
    </div>
</div>
</body>
</html>
