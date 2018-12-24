<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: 469144266
  Date: 2018/9/28
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        tbody tr:nth-of-type(even){
            background-color: #a7cc7d;
        }
    </style>
</head>
<body>

        <table  style="border: 1px #ffe619 solid" >
            <thead>
                    <tr>
                        <th>编号</th>
                        <th>国家</th>
                        <th>城市</th>
                        <th>时间</th>
                        <th>旅游记录</th>
                    </tr>

            </thead>
            <tbody>
            <c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.tc.cityName}</td>
                    <td>${item.tourPlace}</td>
                    <td><fmt:formatDate value="${item.tourTime}" pattern="yyyy-MM-dd"/> </td>
                    <td>${item.tourNote}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

</body>
</html>
