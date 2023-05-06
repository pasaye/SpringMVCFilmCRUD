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
		<c:when test="${! empty keyword}">
			<ul>
				<c:forEach var="x" items="${keyword}">
					<li>${x.title}</li>
					<li>${x.description}</li>
					<li>${x.releaseYear}</li>
					<li>${x.rating}</li>
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>

</body>
</html>