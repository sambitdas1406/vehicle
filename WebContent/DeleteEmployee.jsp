<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String id1=request.getParameter("eid");
System.out.println("id1--->"+id1);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle", "root", "sambit");
String qry="delete from vehicle.employee where eid="+id1;
Statement st=conn.createStatement();
int i=st.executeUpdate(qry);
out.println("Data Deleted Successfully!");
response.sendRedirect("ViewEmployee.jsp");  

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>