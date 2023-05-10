<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Film</title>
<link rel="stylesheet" href="listjsp.css" type="text/css">
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container">
<div class="scroll">
	<c:choose>
		<c:when test="${! empty film}">
	<ul>	
		<li><div class="grow">${film.id}</div></li>
		<li><div class="grow">${film.title}</div></li>
		<li><div class="grow">${film.description}</div></li>
		<li><div class="grow">${film.language}</div></li>
		<li><div class="grow">${film.rentalRate}</div></li>
		<li><div class="grow">${film.length}</div></li>
		<li><div class="grow">${film.replacementCost}</div></li>
		<li><div class="grow">${film.rating}</div></li>
		<li><div class="grow">${film.specialFeatures}</div></li>
		<li><div class="grow">${film.cast}</div></li>
		<li><div class="grow">${film.category}</div></li>
	</ul>
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${! empty newFilm}">
	<ul>
		<li><div class="grow">${newFilm.id}</div></li>
		<li><div class="grow">${newFilm.title}</div></li>
		<li><div class="grow">${newFilm.description}</div></li>
		<li><div class="grow">${newFilm.language}</div></li>
		<li><div class="grow">${newFilm.rentalRate}</div></li>
		<li><div class="grow">${newFilm.length}</div></li>
		<li><div class="grow">${newFilm.replacementCost}</div></li>
		<li><div class="grow">${newFilm.rating}</div></li>
		<li><div class="grow">${newFilm.specialFeatures}</div></li>
		<li><div class="grow">${newFilm.cast}</div></li>
		<li><div class="grow">${newFilm.category}</div></li>
	</ul>		
		</c:when>
	</c:choose>
	
	<c:choose>
	<c:when test="${! empty resultFilms}">
	<c:forEach var="x" items="${ resultFilms}">	
	<ul>
		<li><div class="grow">${x.id}</div></li>
		<li><div class="grow">${x.title}</div></li>
		<li><div class="grow">${x.description}</div></li>
		<li><div class="grow">${x.language}</div></li>
		<li><div class="grow">${x.rating}</div></li>
		<li><div class="grow">${x.specialFeatures}</div></li>
		<li><div class="grow">${x.cast}</div></li>
		<li><div class="grow">${x.category}</div></li>
	</ul>		
	</c:forEach>
	</c:when>
	</c:choose>
</div>
</div>
<%@ include file="update_delete.jsp"%>
</body>
</html>