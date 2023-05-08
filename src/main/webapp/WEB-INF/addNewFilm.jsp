<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Film Site</title>
<link rel="stylesheet" href="listjsp.css" type="text/css">
</head>
<body>
<div class="container">
<div class="scroll">
<c:choose>
		<c:when test="${! empty newFilm}">
			
				
		<a href="singleFilm.do?id=${film.id }">
				<ul>
					<li><div class="grow">Film ID: ${newFilm.id}</div></li>
					<li><div class="grow">Title: ${newFilm.title}</div></li>
					<li><div class="grow">Description: ${newFilm.description}</div></li>
					<li><div class="grow">Year: ${newFilm.releaseYear}</div></li>
					<li><div class="grow">Rating: ${newFilm.rating}</div></li>
					<li><div class="grow">language: ${newFilm.languageId}</div></li>
					<li><div class="grow">${newFilm.cast}</div></li>
					<li><div class="grow">${newFilm.category}</div></li>
				</ul>
			</a>
				
			
		</c:when>
		
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</div>
 <a href="index.html" class="btn btn-secondary" role="button">Back to Home</a>
</div>
</body>
</html>