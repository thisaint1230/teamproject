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
<script src="https://app.embed.im/snow.js" defer></script>

<html>

<head>
    <style>
        body { background-color: lightblue; }

    </style>
</head>
<body>
<h1>Edit Form</h1>
<form:form modelAttribute = "u" method="POST" action="../editok">
    <form:hidden path="id"/>

        <legend> 판매자 정보 </legend>

        <br>

        <label for="seller">판매자 이름</label>
        <form:input path="seller"/> <br> <br>

        <label for="city"> 거래 지역 </label>
        <form:input path="city"/>
        <br> <br>

        <label> 배송 가능 한가요 ?</label>
        <form:checkbox path="possibleDelivery" />

    </fieldset>
    <br>

    <fieldset>
        <legend> 제품 사항 </legend>
        <br>
        <label for="name">제품 이름</label>
        <form:input path="name" /> <br> <br>
        <label for="price">제품 가격</label>
        <form:input path="price" /> <br> <br>
   <label for="productCondition">제품 상태</label>
    <form:select path="productCondition">
    <form:option value="매우나쁨" label="매우나쁨"/>
    <form:option value="나쁨" label="나쁨"/>
    <form:option value="보통"  label="보통"/>
    <form:option value="좋음"  label="좋음"/>
    <form:option value="매우좋음"  label="매우좋음"/>
  </form:select>
        <br>
        <br>

        <label for="category">제품 종류</label>
        <form:select path="category">
            <form:option value="악기" label="악기"/>
            <form:option value="의류" label="의류"/>
            <form:option value="전자기기" label="전자기기"/>
            <form:option value="책" label="책"/>
            <form:option value="화장품" label="화장품"/>
            <form:option value="생활용품" label="생활용품"/>
            <form:option value="침구류" label="침구류"/>
            <form:option value="악세사리" label="악세사리"/>
            <form:option value="기타" label="기타" />
        </form:select>
        <br> <br>
        <input type="submit" value="추가하기">
        <button type="button" onclick="location.href='../list'">목록보기</button>
    </fieldset>
</form:form>
</body>
</html>