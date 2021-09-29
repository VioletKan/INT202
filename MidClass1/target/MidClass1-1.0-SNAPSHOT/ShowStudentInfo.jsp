<%--
  Created by IntelliJ IDEA.
  User: 66994
  Date: 9/29/2021
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Student Info</title>
</head>
<body>
    <h2>New Student Info</h2><hr>
        Student Id: ${requestScope.student.id}<br>
        Student Name: ${requestScope.student.name}<br>
        Gpax: ${requestScope.student.gpax}<br>
        <hr>
    <a href="index.jsp"><button>[OK]</button></a><br>
</body>
</html>
