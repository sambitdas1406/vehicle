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
 <%@ page import="java.util.Random" %>
<%@page import="java.util.Date" %>
 <%Random rand = new Random();
    int randomnumber = rand.nextInt(90000) + 10000;
    
    %>
<%
try {
	
         String eid=request.getParameter("eid");
         
         String jobno1=request.getParameter("job_no");
         int jobno=Integer.parseInt(jobno1);
         
         String title=request.getParameter("title");
         String desc1=request.getParameter("workdesc");
         
         String hour1=request.getParameter("hour");
         int hour=Integer.parseInt(hour1);
         
         String min1=request.getParameter("min");
         int min=Integer.parseInt(min1);

      //   String ampm=request.getParameter("ampm");
      
         SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

         java.util.Date tdate1 = sdf.parse( request.getParameter("date1") );
         java.sql.Date  date = new java.sql.Date( tdate1.getTime() );
          
          
Connection con=null;
PreparedStatement pstmt=null;

//String qry="insert into vehicle.timesheet (eid,jobno,title,desc,hour,min,ampm,date) values( ?,?,?,?,?,?,?,?) ";
String qry="insert into vehicle.timesheet (eid,jobno,title,hour,min,date,desc1) values( ?,?,?,?,?,?,?) ";

Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver installed");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
System.out.println("connection created");


pstmt=con.prepareStatement(qry);

pstmt.setString(1, eid);
pstmt.setInt(2, jobno);
pstmt.setString(3, title);

//pstmt.setString(3, title);
//pstmt.setString(4, desc);

pstmt.setInt(4, hour);
pstmt.setInt(5, min);

pstmt.setDate(6,date);
pstmt.setString(7, desc1);


int s= pstmt.executeUpdate();
if(s>0){
	response.sendRedirect("AddTimeSheet.jsp");
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