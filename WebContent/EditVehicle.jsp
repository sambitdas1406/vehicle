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
//job_id ,job_no,regd_no,model,mileage, chassis_no,engine_no,mdate,sdate,firstname,lastname,emailid,nature,gender,address,mobile_no,pincode

String job_id=request.getParameter("job_id");
//String job_no=request.getParameter("job_no");
int id=Integer.parseInt(job_id);
 //System.out.println("id--->"+id);
 
String regd_no=request.getParameter("regd_no");

String model = request.getParameter("model");

String mileage1=request.getParameter("mileage");
double mileage=Double.parseDouble(mileage1);

String chassis_no=request.getParameter("chassis_no");
String engine_no=request.getParameter("engine_no");
String mdate=request.getParameter("mdate");
String sdate=request.getParameter("sdate");



//if(id != null)
//{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update vehicle.db1  set regd_no=?,model=?,mileage=?,chassis_no=?,engine_no=? ,mdate=?,sdate=? where job_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,regd_no);
ps.setString(2, model);
ps.setDouble(3, mileage);
ps.setString(4, chassis_no);
ps.setString(5, engine_no);
ps.setString(6, mdate);
ps.setString(7, sdate);



int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("view.jsp");
out.print("Record Updated Successfully");
%>
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