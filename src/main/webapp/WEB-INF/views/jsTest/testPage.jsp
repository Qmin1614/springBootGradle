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
         * user 객체를 만들어 주는 생성자 함수
         */

        function User(name, age, ...skills) {
            this.name = name;
            this.age = age;
            this.skills = skills;
        }

        const user1 = new User("Mike", 30, "html", "css");
        const user2 = new User("Tom", 20, "JS", "React");
        const user3 = new User("Jane", 10, "English");

        console.log(user1);
        console.log(user2);
        console.log(user3);
    </script>
</head>
<body>

</body>
</html>
