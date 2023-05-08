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
				</ul>

				<ul>
					<li>${film.cast}</li>
					<li>${film.category}</li>
				</ul>
			</a>

			<form action="deleteFilm.do" method="POST">
				<input type="number" value="Delete film" name="id" /> <input
					type="hidden" value="${film.id}" name="deleteFilm" /> <input
					type="submit" value="deleteFilm" name="deleteButton" />

			</form>



			<h2>Update Film Details</h2>

			<form action="updatedFilms.do" method="GET">
			
		<%-- 	film id:<input type="text" name="id" value="${film.id}"/>
				Title: <input type="text" name="title" value="${film.title}" } /> <br> Description: <input
					type="text" name="description" /> <br> Release year: <input
					type="number" name="releaseYear" /> <br> <br> Film
				Ratings: <input type="radio" id="G" name="rating" value="${film.rating}">G
				<input type="radio" id="PG" name="rating" value="${film.rating}">PG <input
					type="radio" id="PG13" name="rating" value="${film.rating}">PG13 <input
					type="radio" id="R" name="rating" value="${film.rating}"">R <input
					type="radio" id="NC17" name="rating" value="${film.rating}">NC17 <br>
				<div class="form-group">
					<label for="lang">LanguageID</label> <select class="form-select"
						name="languageId" id="lang" aria-label="Default" value="${film.language}">
						<option selected value="1">English</option>
					</select>
				</div>
 --%>
			
				  <input type="hidden" value="${film.id}" name="id" />
				  <input type="submit" value="update" />



				
				

			</form>
			<br>


		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>