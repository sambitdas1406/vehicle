<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
      <%@page import= " org.part.javaApp.PartDAO, org.part.javaApp.Part,java.util.*"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String[] part; %>
<center>You have selected: 
<% 
part = request.getParameterValues("part");
   if (part != null) 
   {
      for (int i = 0; i < part.length; i++) 
      {
         out.println ("<b>"+part[i]+"<b>");
         
      }
   }
   else out.println ("<b>none<b>");
%>
</center>
</body>
</html>