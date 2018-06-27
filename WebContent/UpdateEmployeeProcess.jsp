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
String eid1=request.getParameter("eid");
int eid=Integer.parseInt(eid1);
String id = request.getParameter("id");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String designation=request.getParameter("designation");
String dob=request.getParameter("dob");

String address=request.getParameter("address");

String phone1=request.getParameter("phone");
Long phone=Long.parseLong(phone1);

String gender=request.getParameter("gender");

String pincode1=request.getParameter("pincode");
int pincode=Integer.parseInt(pincode1);

String salary1=request.getParameter("salary");
float salary=Float.parseFloat(salary1);
System.out.println(id);

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update vehicle.employee  set id=?,firstname=?,lastname=?,designation=?,dob=? ,gender=?,address=?,phone=?,pincode=?,salary=? where eid="+eid;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, firstname);
ps.setString(3, lastname);
ps.setString(4, designation);
ps.setString(5, dob);
ps.setString(6, gender);
ps.setString(7, address);
ps.setLong(8, phone);
ps.setInt(9, pincode);
ps.setFloat(10, salary);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
%>
<jsp:forward page="ViewEmployee.jsp"></jsp:forward>
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
}
%>
</body>
</html>