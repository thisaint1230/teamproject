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

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
    <input type="hidden" name="id" value="<%=u.getId()%>"/>
    <table>
        <tr><td>Title:</td><td><input type="text" name="title" value="<%=u.getName()%>"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="title" value="<%=u.getName()%>"/></td></tr>
        <tr><td>Title:</td><td><input type="text" name="title" value="<%=u.getName()%>"/></td></tr>
        <tr><td>Title:</td><td><input type="text" name="title" value="<%=u.getName()%>"/></td></tr>
        <input type="submit" value="수정하기" />
        <input type="button" value="취소하기" onclick="location.href='../list'"/>
    </table>
</form>

</body>
</html>