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
	//dd-MMM-yyyy HH:mm:ss.SSS
	
       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
         String eid=request.getParameter("eid");
         String reason=request.getParameter("reason");
        // String fdate1=request.getParameter("fdate");
        // java.util.Date    fdate = sdf.parse(fdate1);
         
         //String tdate1=request.getParameter("tdate");
         //java.util.Date  tdate = sdf.parse(tdate1);
         
        
        java.util.Date fdate1 = sdf.parse( request.getParameter("fdate") );
        System.out.println("fdate--->"+fdate1);
        java.sql.Date  fdate = new java.sql.Date( fdate1.getTime() );
        System.out.println(fdate);

        java.util.Date tdate1 = sdf.parse( request.getParameter("tdate") );
        java.sql.Date  tdate = new java.sql.Date( tdate1.getTime() );
        
        String status=request.getParameter("leave");
       // int l=Integer.parseInt(arg0, arg1, arg2, arg3)

Connection con=null;
PreparedStatement pstmt=null;

String qry="insert into vehicle.leave (eid,reason,fdate,tdate,status) values( ?,?,?,?,?) ";
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver installed");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
System.out.println("connection created");


pstmt=con.prepareStatement(qry);
pstmt.setString(1, eid);
pstmt.setString(2, reason);

pstmt.setDate(3, fdate);
pstmt.setDate(4, tdate);
pstmt.setString(5, status);


int s= pstmt.executeUpdate();
if(s>0){
	response.sendRedirect("LeaveEmployee.jsp");  

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