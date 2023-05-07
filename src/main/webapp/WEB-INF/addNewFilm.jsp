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
			
				
					<p>Title: ${film.title}</p>
					<p>Description: ${film.description}</p>
					<p>Release Year: ${film.releaseYear}</p>
					<p>Rating ${film.rating}</p> 
				     
				
			
		</c:when>
		
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
 <a href="index.html" class="btn btn-secondary" role="button">Back to Home</a>

</body>
</html>