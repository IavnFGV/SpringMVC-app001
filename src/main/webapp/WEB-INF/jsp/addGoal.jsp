<%--
  Created by IntelliJ IDEA.
  User: GFH
  Date: 28.02.2016
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Goal</title>
    <style>
        .error {
            color: red;
        }

        .errorblock {
            color: #000;
            background-color: #ffeeee;
            border: 3px solid blue;
            border-radius: 5%;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>

<form:form commandName="goal">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <table>
        <thead>
        <tr>
            <td colspan="2"><form:errors path="minutes" cssClass="error"/></td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Enter minutes</td>
            <td><form:input path="minutes" cssErrorClass="error"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Enter Goal Minutes"/>
            </td>
        </tr>
        </tbody>
    </table>
</form:form>
</body>
</html>
