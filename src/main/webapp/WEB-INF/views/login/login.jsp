<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-28
  Time: 오후 1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
  body {
    background-color: #DADADA;
  }
  body > .grid {
    height: 100%;
  }
  .image {
    margin-top: -100px;
  }
  .column {
    max-width: 450px;
  }
</style>

<script>
  function convertFormDataToObject(form) {
    var ary = form.serializeArray();
    var object = {};
    for (var i = 0; i < ary.length; i++) {
      object[ary[i]['name']] = ary[i]['value'];
    }
    return object;
  }

  function login() {
    console.log(JSON.stringify(convertFormDataToObject($('#frm'))));
    $.ajax({
      type: 'post',
      url: '<c:url value='/login'/>',
      data: JSON.stringify(convertFormDataToObject($('#frm'))),
      dataType: 'json',
      contentType: 'application/json',
      success: function (postUpdateMemberResponse) {
        if (postUpdateMemberResponse.status === 'success') {
          alert(postUpdateMemberResponse.message)
          location.href="<c:url value='/'/>";
        } else {
          alert("로그인에 실패하셨습니다.");
        }
      }, fail: function (request, status, error) {
        console.log(error);
      }
    });
  }
</script>
<body>
<div class="ui middle aligned center aligned grid">
  <div class="column">
    <h2 class="ui teal image header" >
      <div class="content">로그인</div>
    </h2>
    <form id="frm" action="<c:url value="/login"/>" method="post" class="ui large form">
      <div class="ui stacked segment">
        <div class="field">
          <div class="ui left icon input">
            <i class="user icon"></i>
            <input type="text" name="loginId" placeholder="아이디를 입력해주세요">
          </div>
        </div>
        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="password" placeholder="비밀번호를 입력해주세요">
          </div>
        </div>
        <button type="button" onclick="login()" class="ui fluid large teal submit button">Login</button>
      </div>
      <div class="ui error message"></div>
    </form>

    <div class="ui message">
      처음이세요? <a href="<c:url value="/member/join"/>">Sign Up</a>
    </div>
  </div>
</div>
</body>
</html>
