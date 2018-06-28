<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
       <%@ page import="java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <H3 ALIGN="CENTER">
      Ramdom number from 0 to 10 : 
      <FONT COLOR="RED">
        <%= (int) (Math.random() * 10) %>
      </FONT>
    </H3>
    <H4 ALIGN="CENTER">Refresh the page to see if the number changes...</H4>
<%Random rand = new Random();
    int randomnumber = rand.nextInt(90000) + 10000;
    
    %>
    
<%=randomnumber%>"/>


<%


	
	





%>



</body>
</html>