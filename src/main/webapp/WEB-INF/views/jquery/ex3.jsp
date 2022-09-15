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
</head>
<body>
<a id="tutorial" href="http://jquery.com" target="_self">jQuery</a>
<script type="text/javascript">
    $('#tutorial').attr('href', 'http://jquery.org').attr('target', '_blank').css('color', 'red');
</script>
</body>
</html>
