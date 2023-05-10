<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<footer>
			<form action="deleteFilm.do" method="POST">
				<input type="number" name="id" /> 
				<input type="hidden" value="${film.id}" name="deleteFilm" /> 
				<input type="submit" value="Delete" name="deleteButton" />
			</form>
			<form action="editFilms.do" method="GET">		
				  <input type="hidden" value="${film.id}" name="id" />
				  <input type="submit" value="Update" />
			</form>		
</footer>