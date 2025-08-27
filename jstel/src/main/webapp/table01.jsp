<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String col = request.getParameter("c");
	String row = request.getParameter("r");
	
	int nCol = Integer.parseInt(col);
	int nRow = Integer.parseInt(row);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellspacing="0" cellpadding="5">
		<%
			for(int i = 0; i< nRow; i++) {
				
		%>
		<tr>
		
		<%
			for(int j = 0; j < nCol; j++) {
		%>
			<td>cell(0,0)</td>
			<td>cell(1,0)</td>
			<td>cell(2,0)</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td>cell(0,1)</td>
			<td>cell(1,1)</td>
			<td>cell(2,2)</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>