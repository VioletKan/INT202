<%--
  Created by IntelliJ IDEA.
  User: 66994
  Date: 9/29/2021
  Time: 7:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student List::</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <p class="h2">Student List::</p>
    <div class="row">

        <c:forEach items="${students}" var="student" varStatus="vs">
            <div class="col-2 p-1 m-2 border border-secondary
                ${vs.count%5==1 || vs.count%5==3 ? 'bg-secondary' : ' '}">

                <div>Student Id: ${student.id}</div>
                <div>Name: ${student.name}</div>
                <div>Gpax: ${student.gpax} </div>
            </div>
        </c:forEach>

    </div>

</div>
<div class = "back"><a href="index.jsp"[GO BACK]></a> </div>
</body>
</html>
