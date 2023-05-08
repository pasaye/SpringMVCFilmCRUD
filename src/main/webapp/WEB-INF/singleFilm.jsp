<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Film</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty film}">
	${film.id}
	${film.title}
	${film.description}
	${film.language}
	${film.rentalRate}
	${film.length}
	${film.replacementCost}
	${film.rating}
	${film.specialFeatures}
	${film.cast}
	${film.category}
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${! empty newFilm}">
	${newFilm.id}
	${newFilm.title}
	${newFilm.description}
	${newFilm.language}
	${newFilm.rentalRate}
	${newFilm.length}
	${newFilm.replacementCost}
	${newFilm.rating}
	${newFilm.specialFeatures}
	${newFilm.cast}
	${newFilm.category}
		</c:when>
	</c:choose>
	
	<c:choose>
	<c:when test="${! empty resultFilms}">
	<c:forEach var="x" items="${ resultFilms}">	
	${x.title}
	${x.description}
	${x.language}
	${x.rating}
	${x.specialFeatures}
	${x.cast}
	${x.category}
	</c:forEach>
	</c:when>
	</c:choose>
</body>
</html>