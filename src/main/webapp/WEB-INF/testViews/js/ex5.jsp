<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-14
  Time: 오전 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Loop & Array</h1>
<script>
    let coworkers = ['egoing', 'leezche', 'duru', 'taeho', 'graphittie'];
</script>
<h2>Co Workers</h2>
<ul>
    <script>
        var i = 0;
        while(i < coworkers.length){
            document.write('<li>' + coworkers[i] + '</li>');
            i++;
        }
    </script>
</ul>
</body>
</html>
