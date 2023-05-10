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
<%@ include file="nav.jsp"%>
<div class="container">
<div class="scroll">
	<c:choose>
		<c:when test="${! empty film}">
			<a href="singleFilm.do?id=${film.id}">
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
</div>	
<%@ include file="update_delete.jsp"%>
</body>
</html>