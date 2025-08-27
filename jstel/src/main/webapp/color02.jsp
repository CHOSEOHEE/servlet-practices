<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test='${param.c == "red"}'>
		<h1 style="color: #ff0000">hello,world</h1>
		</c:when>
		<c:when test='${param.c == "blue"}'>
		<h1 style="color: #0000ff">hello,world</h1>
		</c:when>
		<c:when test= '${param.c == "green"}'>
		 <h1 style="color: #00ff00">hello,world</h1>
		</c:when>
		<c:otherwise>
			<h1>hello, world</h1>
		</c:otherwise>
	</c:choose>
</body>
</html>