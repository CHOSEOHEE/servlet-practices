<%@ page import="com.bit2025.emaillist.dao.EmailDao"%>
<%@ page import="com.bit2025.emaillist.vo.EmailVo"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<EmailVo> list = new EmailDao().findAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	<%
		for(EmailVo vo : list) {
	%>
		<table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<td>성</td>
				<td><%=vo.getFirstName() %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=vo.getLastName() %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%=vo.getEmail() %></td>
			</tr>
			<tr>
				<td colspan="2">삭제</td>
					<a href="/emaillist01/delete.jsp?id=<%=vo.getId() %>"> 삭제</a>
			</tr>
		</table>
		<br>
	<%
		}
	%>
	
	<p>
		<a href="/emaillist01/form.jsp">메일등록</a>
	</p>
	<br>
</body>
</html>