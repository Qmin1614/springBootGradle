<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-10-05
  Time: 오전 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>

        /**
         * 나머지 매개변수
         * 전달 받은 모든 수를 더해야함
         */

        function add(...numbers) {
            // let result = 0;
            // numbers.forEach(num => (result += num));
            // console.log(result);
            let result = numbers.reduce((prev, cur) => prev + cur);
            console.log(result);
        }
            add(1, 2, 3);
            add(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

    </script>
</head>
<body>

</body>
</html>
