<%@ page import="com.example.Board.BoardDAO" %>
<%@ page import="com.example.Board.BoardVO" %><%--
  Created by IntelliJ IDEA.
  User: leeseonghyeon
  Date: 12/2/23
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<h1>Edit Form</h1>
<form:form modelAttribute = "u" method="POST" action="../editok">
    <form:hidden path="id"/>
    <table>
        <tr><td>Title:</td><td><form:input path="name" /></td></tr>
        <tr><td>Writer:</td><td><form:input path="name" /></td></tr>
        <tr><td>Title:</td><td><form:input path="name" /></td></tr>
        <tr><td>Title:</td><td><form:input path="name" /></td></tr>
        <input type="submit" value="수정하기" />
        <input type="button" value="취소하기" onclick="location.href='../list'"/>
    </table>
</form:form>

</body>
</html>