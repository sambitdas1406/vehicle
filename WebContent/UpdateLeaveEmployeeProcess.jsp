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
<%@page  import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/vehicle";%>
<%!String user = "root";%>
<%!String psw = "sambit";%>
<%

String eid1=request.getParameter("id");
int id=Integer.parseInt(eid1);

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
String eid=request.getParameter("eid");
String reason=request.getParameter("reason");
// String fdate1=request.getParameter("fdate");
// java.util.Date    fdate = sdf.parse(fdate1);

//String tdate1=request.getParameter("tdate");
//java.util.Date  tdate = sdf.parse(tdate1);


java.util.Date fdate1 = sdf.parse( request.getParameter("fdate") );
//System.out.println("fdate--->"+fdate1);
java.sql.Date  fdate = new java.sql.Date( fdate1.getTime() );
//System.out.println(fdate);

java.util.Date tdate1 = sdf.parse( request.getParameter("tdate") );
java.sql.Date  tdate = new java.sql.Date( tdate1.getTime() );

String status=request.getParameter("leave");
// int l=Integer.parseInt(arg0, arg1, arg2, arg3)

//if(id != null)
//{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update vehicle.leave  set reason=?,fdate=?,tdate=?,status=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,reason);
ps.setDate(2, fdate);
ps.setDate(3,tdate);
ps.setString(4, status);



int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("ViewLeaveEmployee.jsp");
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