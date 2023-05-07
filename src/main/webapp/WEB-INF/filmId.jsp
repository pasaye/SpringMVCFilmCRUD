<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Films</title>
</head>
<body>
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
				</ul>

				<ul>
					<li>${film.cast}</li>
					<li>${film.category}</li>
				</ul>
			</a>

			<form action="deleteFilm.do" method="POST">
				<input	type="number" value="Delete film" name="id" />
				<input type="hidden" value="${film.id}" name="deleteFilm" />
				<input type="submit" value="deleteFilm" name="deleteButton" />
				 
			</form>
			
			
			
			<h2> Update Film Details</h2>
			
<form action="updateFilm.do" method="GET">
			  Title:      
    <input type="text" name="title"/> 
    <br>
    Description: 
    <input type="text" name="description"/> 
    <br>
    Release year:
    <input type="number" name="releaseYear"/>
    <br> 
    <br> 
    
    Film Ratings:
    <input type="radio" id="G" name ="rating" value="G">G
    <input type="radio" id="PG" name ="rating" value="PG">PG
    <input type="radio" id="PG13" name ="rating" value="PG13">PG13
    <input type="radio" id="R" name ="rating" value="R">R
    <input type="radio" id="NC17" name ="rating" value="NC17">NC17

   <br>
Language ID:    
    <input type="number" name="languageId"/> 
    <br>
    <br>
				<input	type="number" value="Update film" name="id" />
				<input type="hidden" value="${film.id}" name="UpdateFilm" />
				<input type="submit" value="updateFilm" name="UpdateButton" />
				 
			</form>
			<br>
			

		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>