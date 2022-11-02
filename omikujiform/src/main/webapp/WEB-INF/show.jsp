<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<main id="container">
		<h2>Here's Your Omikuji!</h2>
		<section>
			<h3><c:out value="${message}"/></h3>
		</section>
		<p id="back"><a href="/omikuji">Go Back</a></p>
	</main>
</body>
</html>