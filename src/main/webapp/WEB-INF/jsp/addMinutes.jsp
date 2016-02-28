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

    <script src="jquery-2.2.1.js"></script>
    <script>
        $(document).ready(
                function () {
                    $.getJSON('<spring:url value="activities.json"/>', function (data) {
                        var html = "<option value = ''>--PleaseSelect one--</option>";
                        var len = data.length;
                        for (var i = 0; i < len; i++) {
                            html += '<option value="' + data[i].desc + '">'
                            +data[i].desc + '</option>';
                        }
                        html += '</option>';
                        $('#activities').html(html);
                    })
        });
    </script>
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
            <td>
                <form:select id="activities" path="activity"/>
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
