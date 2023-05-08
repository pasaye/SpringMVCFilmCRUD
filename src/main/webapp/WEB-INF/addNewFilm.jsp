<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Film Site</title>
</head>
<body>
<c:choose>
		<c:when test="${! empty newFilm}">
			
				
		<a href="singleFilm.do?id=${film.id }">
				<ul>
					<li>Film ID: ${newFilm.id}</li>
					<li>Title: ${newFilm.title}</li>
					<li>Description: ${newFilm.description}</li>
					<li>Year: ${newFilm.releaseYear}</li>
					<li>Rating: ${newFilm.rating}</li>
					<li>language: ${newFilm.language}</li>
					<li>${newFilm.cast}</li>
					<li>${newFilm.category}</li>
				</ul>
			</a>
				
			
		</c:when>
		
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
 <a href="index.html" class="btn btn-secondary" role="button">Back to Home</a>

</body>
</html>