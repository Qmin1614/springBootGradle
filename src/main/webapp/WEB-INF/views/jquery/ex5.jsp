<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-15
  Time: 오후 2:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <style>
        p {
            color: blue;
            margin: 8px;
        }
    </style>
</head>
<body>

<%--자식으로 삽입--%>
<p>============================</p><br>
<p>자식으로 삽입</p><br>
<p>============================</p><br>

<p id="child">
    I would like to say:
</p>

<script>
    $("#child").append("<strong>Hello</strong>");
</script>

<%--형제로 삽입--%>
<p>============================</p><br>
<p>형제로 삽입</p><br>
<p>============================</p><br>

<p id="sibling">
    I would like to say:
</p>

<script>
    $("#sibling").after("<b>Hello</b>");
</script>

<%--부모로 감싸기--%>
<p>============================</p><br>
<p>부모로 감싸기</p><br>
<p>============================</p><br>

<span class="parent">Span Text</span>
<strong>What about me?</strong>
<span class="parent">Another One</span>

<script>
    $(".parent").wrap("<div><div><p><em><b></b></em></p></div></div>");
</script>

<%--삭제--%>
<p>============================</p><br>
<p>삭제</p><br>
<p>============================</p><br>

<p class="delete">
    Hello
</p>
how are
<p class="delete">
    you?
</p>
<button>
    Call remove() on paragraphs
</button>

<script>
    $("button").click(function () {
        $(".delete").remove();
    });
</script>

<%--치환--%>
<p>============================</p><br>
<p>치환</p><br>
<p>============================</p><br>

<p class="replace"> Hello </p>
<p class="replace"> cruel </p>
<p class="replace"> World </p>

<script>
    $("<b>Paragraph. </b>").replaceAll(".replace"); // check replaceWith() examples
</script>
</body>
</html>

<%--클래스--%>
<p>============================</p><br>
<p>클래스</p><br>
<p>============================</p><br>

<p class="blue"> Click to toggle </p>
<p class="blue highlight"> highlight </p>
<p class="blue"> on these </p>
<p class="blue"> paragraphs </p>

<script>
    $(".blue").click(function () {
        $(this).toggleClass("highlight");
        $(".blue highlight").toggleClass("blue");
    });
</script>

<%--속성제어--%>
<p>============================</p><br>
<p>속성제어</p><br>
<p>============================</p><br>

<input type="text" value="some text"/>
<p id="text_view">
</p>

<script>$("input").keyup(function () {
    var value = $(this).val();
    $("#text_view").text(value);
}).keyup();
</script>
</body>
</html>
