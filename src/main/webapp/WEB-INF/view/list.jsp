<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.Board.BoardDAO" %>
<%@ page import="com.example.Board.BoardVO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<script src="https://app.embed.im/snow.js" defer></script>

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
    #l_c {background-color: #f2f2f2;
    }
    body { background-color: lightblue; }
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
        <th>제품 번호</th>
        <th>제품 상태</th>
        <th>제품 종류</th>
        <th>제품 이름</th>
        <th>제품 가격</th>
        <th>판매자 이름</th>
        <th>판매 지역</th>
        <th>배달 가능 여부</th>
        <th>입력날짜</th>
        <th>수정버튼</th>
        <th>삭제버튼</th>
        <th>자세히보기</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr id="l_c">
            <td>${u.id}</td>
            <td>${u.productCondition}</td>
            <td>${u.category}</td>
            <td>${u.name}</td>
            <td>${u.price}원</td>
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