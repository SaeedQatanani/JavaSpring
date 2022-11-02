<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<main>
		<form action="/omikuji/process" method="post">
			<h2>Send an Omikuji!</h2>
			<div class="form-group row">
				<label for="number" class="col-sm-4 col-form-label">Pick any number from 5 to 25</label>
				<div class="col-sm-8">
				<input type="number" name="number" id="number" class="form-control">
				<h6><c:out value="${error}"/></h6>
				</div>
			</div>
			<div class="form-group row">
				<label for="cityname" class="col-sm-4 col-form-label">Enter the name of any city:</label>
				<div class="col-sm-8">
				<input type="text" name="cityname" id="cityname" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label for="personname" class="col-sm-4 col-form-label">Enter the name of any real person:</label>
				<div class="col-sm-8">
				<input type="text" name="personname" id="personname" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label for="hoppy" class="col-sm-4 col-form-label">Enter professional endeavor or hobby:</label>
				<div class="col-sm-8">
				<input type="text" name="hoppy" id="hoppy" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label for="livingthing" class="col-sm-4 col-form-label">Enter any type of living thing:</label>
				<div class="col-sm-8">
				<input type="text" name="livingthing" id="livingthing" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label for="sthnice" class="col-sm-4 col-form-label">Say something nice to someone:</label>
				<div class="col-sm-8">
				<textarea rows="5" cols="10" name="sthnice" id="sthnice" class="form-control"></textarea>
				</div>
			</div>
			<p>Send and show a friend</p>
			<input type="submit" value="Send" class="btn btn-primary" id="button">
		</form>
	</main>
</body>
</html>