<%@page import = "com.bit2025.emaillist.dao.EmailDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sId = request.getParameter("id");
	Long id = Long.parseLong(sId);
	
	new EmailDao().deleteById(id);
	
	response.sendRedirect("/emaillist01");
%>
