<%@ page import="com.bit2025.emaillist.dao.EmailDao"%>
<%@ page import="com.bit2025.emaillist.vo.EmailVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	
	EmailVo vo = new EmailVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmailDao().insert(vo);

	response.sendRedirect("/emaillist01");
%>