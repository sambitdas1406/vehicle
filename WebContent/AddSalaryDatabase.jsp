<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page  import="java.text.SimpleDateFormat"%>
<%
try {
         String eid=request.getParameter("eid");
         String month=request.getParameter("month");
         String year=request.getParameter("year");
        String salary1=request.getParameter("salary");
        float salary =Float.parseFloat(salary1);


Connection con=null;
PreparedStatement pstmt=null;

String qry="insert into vehicle.salary (eid,month,year,salary) values( ?,?,?,?) ";
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver installed");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
System.out.println("connection created");


pstmt=con.prepareStatement(qry);

pstmt.setString(1, eid);
pstmt.setString(2, month);
pstmt.setString(3, year);
pstmt.setFloat(4, salary);


int s= pstmt.executeUpdate();
if(s>0){
response.sendRedirect("AddSalary.jsp");

%>
<% 
}
else{
out.print("sorry!please fill correct detail and try again" );
}
}
catch(Exception e){e.printStackTrace();
out.print("sorry!please fill correct detail and try again" );
}
%>


</body>
</html>