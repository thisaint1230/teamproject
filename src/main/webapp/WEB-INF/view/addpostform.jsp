<%--
  Created by IntelliJ IDEA.
  User: leeseonghyeon
  Date: 12/2/23
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<script src="https://app.embed.im/snow.js" defer></script>

<html>
<head>
    <title>Title</title>
    <style>
        body { background-color: lightblue; }

    </style>
</head>
<body>
<h2> 제품 사항 추가  </h2>

<form action="addok" method="post">


    <fieldset>
        <legend> 판매자 정보 </legend>

        <br>

        <label for="seller">판매자 이름</label>
        <input type="text" id="seller" name="seller" /> <br> <br>

        <label for="city"> 거래 지역 </label>
        <input type="text" id="city" name="city" /> <br> <br>

        <label> 배송 가능 한가요 ?</label>
        <input type="checkbox" name="possibleDelivery">


    </fieldset>
    <br>

    <fieldset>
        <legend> 제품 사항 </legend>
        <br>
        <label for="name">제품 이름</label>
        <input type="text" id="name" name="name" /> <br> <br>
        <label for="price">제품 가격</label>
        <input type="text" id="price" name="price" /> <br> <br>

        <label for="productCondition">제품 상태</label>
        <select name="productCondition" id="productCondition">
            <option value="매우나쁨">매우나쁨</option>
            <option value="나쁨">나쁨</option>
            <option value="보통">보통</option>
            <option value="좋음">좋음</option>
            <option value="매우좋음">매우좋음</option>
        </select>

        <br>
        <br>

        <label for="category">제품 종류</label>
        <select id="category" name="category">
            <option value="악기">악기</option>
            <option value="의류">의류</option>
            <option value="전자기기">전자기기</option>
            <option value="책">책</option>
            <option value="화장품">화장품</option>
            <option value="생활용품">생활용품</option>
            <option value="침구류">침구류</option>
            <option value="악세사리">악세사리</option>
            <option value="기타">기타</option>
        </select>
        <br> <br>

        <input type="submit" value="추가하기">
        <button type="button" onclick="location.href='list'">목록보기</button>

    </fieldset>
</form>
<br>
<br>

</body>
</html>
