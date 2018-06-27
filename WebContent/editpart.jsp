<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@page import="org.part.javaApp.PartDAO"%>  
    <jsp:useBean id="u" class="org.part.javaApp.Part"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
 <%
 int i=PartDAO.update(u);  
 response.sendRedirect("viewpart.jsp?page=1");  
 %>

</body>
</html>