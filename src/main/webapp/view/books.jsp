<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books List</title>
<style>
    table {
        border-collapse: collapse;
        width: 60%;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<h2>Books Information</h2>

<table border="1">
    <tr>
        <th>Book Id</th>
        <th>Book Name</th>
        <th>Book Price</th>
    </tr>

    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.bookId}</td>
            <td>${book.bookName}</td>
            <td>${book.bookPrice}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
