<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-15
  Time: 오전 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #grid {
           border: 5px solid pink;
            display: grid;
            grid-template-columns: 150px 1fr;
        }
        div {
            border: 5px solid gray;
        }
    </style>
</head>
<body>
<div id="grid">
    <div>NAVIGATION</div>
    <div>ARTICLE</div>
</div>
</body>
</html>
