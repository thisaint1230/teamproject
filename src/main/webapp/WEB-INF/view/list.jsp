<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.Board.BoardDAO" %>
<%@ page import="com.example.Board.BoardVO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Title</title>
</head>
<style>
    h1{
        border-bottom: 1px solid black;
        padding-left: 1rem;
    }
    #list {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    #list td, #list th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
    }
    #list tr:nth-child(even){
        background-color: #f2f2f2;
    }
    #list tr:hover {
        background-color: #ddd;
    }
    #list th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #006bb3;
        color: white;
    }
</style>

<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='delete' + id;
    }
</script>

<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>photo</th>
        <th>category</th>
        <th>name</th>
        <th>price</th>
        <th>seller</th>
        <th>city</th>
        <th>possibleDelivery</th>
        <th>regdate</th>
        <th>edit</th>
        <th>Delete</th>
        <th>SHOW</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.photo}</td>
            <td>${u.category}</td>
            <td>${u.name}</td>
            <td>${u.price}</td>
            <td>${u.seller}</td>
            <td>${u.city}</td>
            <td>${u.possibleDelivery}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.id}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
            <td><a href="SHOW/${u.id}">SHOW</a></td>
        </tr>
    </c:forEach>
</table>


<br/><button type="button" onclick="location.href='add'">Add</button>
</body>
</html>