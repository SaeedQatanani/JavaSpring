<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receipt</title>
</head>
<body>
	<h1>Customer Name: <c:out value="${fullname}"/></h1>
	<h2>Item name: <c:out value="${fullitemname}"/></h2>
	<h2>Price: $<c:out value="${fullprice}"/></h2>
	<h2>Description: <c:out value="${fulldescription}"/></h2>
	<h2>Vendor: <c:out value="${fullvendor}"/></h2>
</body>
</html>