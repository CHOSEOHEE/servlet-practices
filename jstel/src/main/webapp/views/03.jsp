<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% pageContext.setAttribute("newLine", "\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>JSTL Test : c:forEach, c:set, fn:length, fn:replace</h4>
	
	<c:set var="count" value="${fn:length(list) }" ></c:set>
	<ul>
		<c:forEach items="${list }" var="vo" varStatus="status">
			<li>[${count - status.index}] (${status.index} : ${status.count}) ${vo.id } : ${vo.name }</li>		
		</c:forEach>
	</ul>
	
	<p>
		${fn:replace(contents, newLine, "<br>") } 
	</p>
</body>
</html>