<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Films</title>
<link rel="stylesheet" href="listjsp.css" type="text/css">
</head>
<body>
<div class="container">
<div class="scroll">
	<c:choose>
		<c:when test="${! empty film}">
			<a href="singleFilm.do?id=${film.id }">
				<ul>
					<li>Film ID: ${film.id}</li>
					<li>Title: ${film.title}</li>
					<li>Description: ${film.description}</li>
					<li>Year: ${film.releaseYear}</li>
					<li>Rating: ${film.rating}</li>
					<li>language: ${film.language}</li>
					<li>${film.cast}</li>
					<li>${film.category}</li>
				</ul>
			</a>



		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</div>
			<form action="deleteFilm.do" method="POST">
				<input type="number" value="Delete film" name="id" /> <input
					type="hidden" value="${film.id}" name="deleteFilm" /> <input
					type="submit" value="deleteFilm" name="deleteButton" />
			</form>
			<form action="updatedFilms.do" method="GET">		
				  <input type="hidden" value="${film.id}" name="id" />
				  <input type="submit" value="${film.id}" />
			</form>
			<a href="index.html" class="btn btn-secondary" role="button">Back
		to Home</a>
</div>	

</body>
</html>