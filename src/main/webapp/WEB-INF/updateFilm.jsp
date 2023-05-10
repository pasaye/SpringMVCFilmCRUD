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
<%@ include file="nav.jsp"%>
	<c:choose>
		<c:when test="${! empty update}">
         	<ul>
				<li><a href="singleFilm.do?title=${x.title }">${update.id}</a></li>
				<li><a href="singleFilm.do?title=${x.title }">${update.title}</a></li>
				<li><a href="singleFilm.do?title=${x.title }">${update.description}</a></li>
				<li><a href="singleFilm.do?title=${x.title }">${update.releaseYear}</a></li>
				<li><a href="singleFilm.do?title=${x.title }">${update.rating}</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
<%@ include file="update_delete.jsp"%>
</body>
</html>