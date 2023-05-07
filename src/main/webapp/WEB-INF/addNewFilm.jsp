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
		<c:when test="${! empty film}">
			
				
		<a href="singleFilm.do?id=${film.id }"><p>Title: ${film.title}</p></a>
		<a href="singleFilm.do?id=${film.id }"><p>Description: ${film.description}</p></a>
		<a href="singleFilm.do?id=${film.id }"><p>Release Year: ${film.releaseYear}</p></a>
		<a href="singleFilm.do?id=${film.id }"><p>Rating ${film.rating}</p></a> 
		<a href="singleFilm.do?id=${film.id }"><p>language ${film.language}</p></a> 
				     
				
			
		</c:when>
		
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
 <a href="index.html" class="btn btn-secondary" role="button">Back to Home</a>

</body>
</html>