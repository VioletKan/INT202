<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 66994
  Date: 8/27/2021
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
</body>
</html>
