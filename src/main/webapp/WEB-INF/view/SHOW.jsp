<%--
  Created by IntelliJ IDEA.
  User: leeseonghyeon
  Date: 12/2/23
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://app.embed.im/snow.js" defer></script>

<head>
    <style>
        body { background-color: lightblue; }
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

</head>

<body>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>condition</th>
        <th>category</th>
        <th>name</th>
        <th>price</th>
        <th>seller</th>
        <th>city</th>
        <th>possibleDelivery</th>
        <th>regdate</th>
    </tr>
    <tr>
        <td>${u.id}</td>
        <td>${u.productCondition}</td>
        <td>${u.category}</td>
        <td>${u.name}</td>
        <td>${u.price}</td>
        <td>${u.seller}</td>
        <td>${u.city}</td>
        <td>${u.possibleDelivery}</td>
        <td>${u.regdate}</td>
    </tr>
</table>

<p> <a href="../../board/list"> 뒤로가기 </a></p>


</body>
