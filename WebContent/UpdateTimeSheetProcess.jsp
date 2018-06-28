<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page  import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/vehicle";%>
<%!String user = "root";%>
<%!String psw = "sambit";%>
<%
 String id1=request.getParameter("id");
int id=Integer.parseInt(id1);

String eid=request.getParameter("eid");

String jobno1=request.getParameter("job_no");
int jobno=Integer.parseInt(jobno1);

String title=request.getParameter("title");
String desc1=request.getParameter("workdesc");

String hour1=request.getParameter("hour");
int hour=Integer.parseInt(hour1);

String min1=request.getParameter("min");
int min=Integer.parseInt(min1);

//String ampm=request.getParameter("ampm");

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

java.util.Date tdate1 = sdf.parse( request.getParameter("date1") );
java.sql.Date  date = new java.sql.Date( tdate1.getTime() );
 
//if(id != null)
//{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
//eid,jobno,title,hour,min,ampm,date,desc1
String sql="Update vehicle.timesheet  set jobno=?,title=?,hour=?,min=?, date=?,desc1=? where id="+id;
ps = con.prepareStatement(sql);
ps.setInt(1,jobno);
ps.setString(2, title);
ps.setInt(3, hour);
ps.setInt(4, min);
//ps.setString(5, ampm);
ps.setDate(5,date);
ps.setString(6,desc1);






int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("ViewTimeSheet.jsp");
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