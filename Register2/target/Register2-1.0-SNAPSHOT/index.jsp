<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        .box {
            display: inline-flex;
            padding: 5px;
            width: 15px;
            border-radius: 12%;
            background-color: antiquewhite;
            border: gray 1px solid;
            text-align: right;
            justify-content: right;
        }

    </style>
</head>
<body>


<br/>
<div style="padding: 10px; display: block; width: 50%; margin:  auto">
    <%--    <c:forEach begin="1" end="100" var="value">--%>
    <%--        <div class ="box">${value}</div>--%>
    <%--    </c:forEach>--%>
    Menu<br>
    <a href="course-list">1) ลงทะเบียน</a> <br>
    <a href="course-registered-history">2)ประวัติการลงทะเบียน </a>
</div>

</body>
</html>