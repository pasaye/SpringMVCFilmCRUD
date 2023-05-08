<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Films</title>
<link rel="stylesheet" href="listjsp.css" type="text/css">
</head>
<body>
<div class="container">
<div class="scroll">
	<c:choose>
		<c:when test="${! empty keyword}">
		<ul>
				<c:forEach var="x" items="${keyword}">
				<li><div class="grow"><a href="singleFilm.do?title=${x.title }">${x.title}</a></div></li>
				<li><div class="grow"><a href="singleFilm.do?title=${x.title }">${x.description}</a></div></li>
				<li><div class="grow"><a href="singleFilm.do?title=${x.title }">${x.releaseYear}</a></div></li>
				<li><div class="grow"><a href="singleFilm.do?title=${x.title }">${x.rating}</a></div></li>
				<li><div class="grow"><a href="singleFilm.do?title=${x.title }">${x.language}</a></div></li>
					<br>
					<br>
				</c:forEach>
				
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</div>
<a href="index.html" class="btn btn-secondary" role="button">Back
		to Home</a>
</div>
</body>
</html>