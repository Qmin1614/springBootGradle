<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        if(checkps1 === checkps2) {
            let password = {"password": checkps1};
            let addFrm = convertFormDataToObject($('#frm'));
            let objAll = {...addFrm, ...password}
                //console.log(objAll);
            $.ajax({
                type: 'post',
                url: '<c:url value='/member/add'/>',
                data: JSON.stringify(objAll),
                dataType: 'json',
                contentType: 'application/json',
                success: function (postCreateMemberResponse) {
                    if (postCreateMemberResponse.status === 'success') {
                        alert(postCreateMemberResponse.message)
                        window.location.reload();
                    } else {
                        alert("회원 가입에 실패하셨습니다.");
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
<h3>회원 가입</h3>
<div>
    <div>
        <form id="frm" action="<c:url value='/member/add'/>" method="post">
            <table>
                <tr>
                    <th>이름</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="text" id="name" name="name">
                        </label>
                    </div>
                </td>
                <tr>
                    <th>아이디</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="text" id="loginId" name="loginId">
                        </label>
                    </div>
                </td>
                <tr>
                    <th>비밀번호</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="password" id="checkps1">
                        </label>
                    </div>
                </td>
                <tr>
                    <th>비밀번호 확인</th>
                </tr>
                <td>
                    <div>
                        <label>
                            <input type="password" id="checkps2">
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
