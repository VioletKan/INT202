<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 66994
  Date: 9/3/2021
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Student Info</title>

</head>
<body>
    <h2>New Student Info</h2> <hr>
    Student Id :${student.id} <br>
    Student Name : ${student.name}<br>
    Gpax : ${student.gpax}<br>
    <hr>
    <a href="index.jsp"><button> [OK] </button></a> <br>

    <c:forEach begin = "1" end="12" varStatus="vs">
        2 x ${vs.count} = ${vs.count*2} <br>
    </c:forEach>

</body>
</html>
