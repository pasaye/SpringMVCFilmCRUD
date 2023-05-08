<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty update}">
			 <a href="index.html">Home</a>

         	<ul>
				<c:forEach var="x" items="${update}">
					<li><a href="singleFilm.do?title=${x.title }">${x.id}</a></li>
					<li><a href="singleFilm.do?title=${x.title }">${x.title}</a></li>
					<li><a href="singleFilm.do?title=${x.title }">${x.description}</a></li>
					<li><a href="singleFilm.do?title=${x.title }">${x.releaseYear}</a></li>
					<li><a href="singleFilm.do?title=${x.title }">${x.rating}</a></li>
					<br>
					<br>
			
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			 <a href="index.html">Home</a>
			 <br>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>







</body>
</html>