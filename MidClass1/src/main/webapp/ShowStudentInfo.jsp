<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        Gpax: ${student.gpax}<br>
        <hr>
    <a href="index.jsp"><button>[OK]</button></a><br>

<%--    //ไม่ผ่าน servlet ได้ เพราะแค่วนลูปไม่ได้ต้องการ data--%>
    <c:forEach begin ="1" end="12" varStatus="vs">
        2 x ${vs.count} = ${vs.count*2}<br>
    </c:forEach>
</body>
</html>
