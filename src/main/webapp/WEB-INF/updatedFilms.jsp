<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Films</title>
<link rel="stylesheet" href="addForm.css" type="text/css">
</head>
<body>
	<%-- <c:choose> --%>
		<%-- <c:when test="${! empty update}"> --%>
		
		${update}
		 	
	
			<form action="updateFilm.do" method="POST">
			
		<%-- 	film id:<input type="number" name="id" value="${update.id}"/> --%>
				Title: <input type="text" name="title" value="${update.title}" } /> <br> Description: <input
					type="text" name="description" /> <br> Release year: <input
					type="number" name="releaseYear" /> <br> <br> Film
				Ratings: <input type="radio" id="G" name="rating" value="${update.rating}">G
				<input type="radio" id="PG" name="rating" value="${update.rating}">PG <input
					type="radio" id="PG13" name="rating" value="${update.rating}">PG13 <input
					type="radio" id="R" name="rating" value="${update.rating}"">R <input
					type="radio" id="NC17" name="rating" value="${update.rating}">NC17 <br>
				<div class="form-group">
					<label for="lang">LanguageID</label> <select class="form-select"
						name="languageId" id="lang" aria-label="Default" value="${update.language}">
						<option selected value="1">English</option>
					</select>
				</div>

			
				  <input type="hidden"  name="id" />
				  <input type="submit" value="update" />



				
				

			</form>
			<br>


		<%-- </c:when> --%><%-- 
		<c:otherwise>
			<p>No film found</p> --%>
	<%-- 	</c:otherwise> --%>
	<%-- </c:choose> --%>
</body>
</html>