<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 6/3/2023
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr>
            <th>ID</th>
            <th>Account</th>
            <th>Password</th>
        </tr>
            <c:forEach items="${list}" var="list">
        <tr>
                <td><c:out value="${list.id}"></c:out></td>
                <td><c:out value="${list.account}"></c:out></td>
                <td><c:out value="${list.password}"></c:out></td>
        </tr>
            </c:forEach>
    </table>
</body>
</html>
