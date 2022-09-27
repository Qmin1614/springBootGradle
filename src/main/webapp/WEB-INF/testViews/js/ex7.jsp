<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-14
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Object</h1>
<h2>Create</h2>
<script>
    let coworkers = {
        "programmer": "Qmin",
        "designer" : "leezche"
    };
    document.write("programmer : " + coworkers.programmer + "<br>");
    document.write("designer : " + coworkers.designer + "<br>");
    coworkers.bookkeeper = "duru";
    document.write("bookkeeper : " + coworkers.bookkeeper + "<br>");
    coworkers["data scientist"] = "taeho";
    document.write("data scientist : " + coworkers["date scientist"] + "<br>");
</script>
<h2>Iterate</h2>
<script>
    for(var key in coworkers) {
      document.write(key + ' : ' + coworkers[key] + '<br>');
    }
</script>
<h2>Property & Method</h2>
<script>
    coworkers.showAll = function (){
        for(var key in this) {
            if (key !== 'showAll') {
                document.write(key + ' : ' + this[key] + '<br>');
            }
        }
    }
    coworkers.showAll();
</script>
</body>
</html>
