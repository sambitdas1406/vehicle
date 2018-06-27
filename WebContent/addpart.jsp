<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.part.javaApp.PartDAO"%>  
<jsp:useBean id="u" class="org.part.javaApp.Part"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
int i=PartDAO.save(u);  
if(i>0){  
response.sendRedirect("addpart-success.jsp");  
}else{  
response.sendRedirect("addpart-error.jsp");  
}  
%>  
</body>
</html>