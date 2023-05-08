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
	<c:choose> 
	<c:when test="${! empty update}"> 

	<form class="container" action="updateFilm.do" method="POST">
		<fieldset class="items add">
			<%-- film id:<input type="number" name="id" value="${update.id}"/>  --%>
			<label id="one"> Title: </label>  
				<input type="text" name="title" value="${update.title}" required/>		
		    <label id="two"> Description: </label> 
		        <input type="text" name="description" value="${update.description}"/> 
		    <label id="three">Release year: </label> 
			   <input type="number" name="releaseYear" value="${update.releaseYear}" required/>
		</fieldset>
		<fieldset class="items">
			<label id="four">Film Ratings </label> 
				<input type="radio" id="G" name="rating"/>G 
				<input type="radio" id="PG" name="rating"/>PG 
				<input type="radio" id="PG13" name="rating"/>PG13
				<input type="radio" id="R" name="rating"/>R
				<input type="radio" id="NC17" name="rating"/>NC17
		</fieldset>
		<fieldset class="items">
			<label id="five"> Language ID: </label>
			<div class="form-group">
				<select required class="form-select" name="languageId" id="lang" aria-label="Default">
					<option selected value="1">English</option>
					<option selected value="2">Italian</option>
					<option selected value="3">Japanese</option>
					<option selected value="4">Mandarin</option>
					<option selected value="5">French</option>
					<option selected value="6">German</option>
				</select>
			</div>
		</fieldset>
		<input type="submit" value ="${update.id}" name="id" >
		<input type="hidden" name="id" /> <input type="submit" name="id" />
	</form>
	</c:when> 
	 <c:otherwise>
			<p>No film found</p> 
		</c:otherwise> 
	</c:choose> 
</body>
</html>