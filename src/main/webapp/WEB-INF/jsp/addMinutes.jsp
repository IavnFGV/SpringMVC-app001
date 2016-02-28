<%--
  Created by IntelliJ IDEA.
  User: GFH
  Date: 27.02.2016
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Add Minutes</title>
</head>
<body>
<h1>Add minutes exercise</h1>

Language : <a href="?language=en_US">English</a>|<a href="?language=ru_RU">Russian</a>
<form:form commandName="exercise">
    <table>
        <tr>
            <td>
                <spring:message code="goal.text"/>
            </td>
            <td>
                <form:input path="minutes"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Enter Exercise"/>
            </td>
        </tr>
    </table>
</form:form>
<h1>Goal for a day is: ${goal.minutes}</h1>
</body>
</html>
