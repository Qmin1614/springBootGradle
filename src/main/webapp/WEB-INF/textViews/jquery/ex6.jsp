<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-16
  Time: 오전 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <style>
        p {
            margin:0;
            color:blue;
        }
        div, p {
            margin-left:10px;
        }
        span {
            color:red;
        }
    </style>
</head>
<body>
<p>
    Type 'correct' to validate.
</p>
<form action="javascript:alert('success!');">
    <div>
        <input type="text" />

        <input type="submit" />
    </div>
</form>
<span></span>
<script>
    $("form").submit( function() {
        if ($("input:first").val() == "correct") {
            $("span").text("Validated...").show();
            return true;
        }
        $("span").text("Not valid!").show().fadeOut(1000);
        return false;
    });
</script>
</body>
</html>
