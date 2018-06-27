<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/vehicle";%>
<%!String user = "root";%>
<%!String psw = "sambit";%>
<%


String id1=request.getParameter("id");
int id=Integer.parseInt(id1);
System.out.println(id1);
String eid=request.getParameter("eid");
String month=request.getParameter("month");
String year=request.getParameter("year");
String salary1=request.getParameter("salary");
float salary=Float.parseFloat(salary1);

//if(id != null)
//{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update vehicle.salary  set month=?,year=?,salary=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,month);
ps.setString(2, year);
ps.setFloat(3, salary);




int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
%>
<jsp:forward page="ViewSalary.jsp"></jsp:forward>
<% 
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
}
//}
%>
</body>
</html>