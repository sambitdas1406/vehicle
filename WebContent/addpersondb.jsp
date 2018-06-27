<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%   

try {
	               String firstname=request.getParameter("fname");
	               String lastname=request.getParameter("lname");
	               String udate=request.getParameter("userdate");
	                String emailid=request.getParameter("ed");
	               String mobile_no1=request.getParameter("mn");
	               long mobile_no=Long.parseLong(mobile_no1);
	                String gender=request.getParameter("gender");
	   
	               String address=request.getParameter("addr");
	               String city=request.getParameter("city");
	               String pincode1=request.getParameter("pc");
	    
	                 int  pincode=Integer.parseInt(pincode1);
	                 String state=request.getParameter("st");
	    
	                 String userid=request.getParameter("userid");
	    
	   
	      Connection con=null;
	      PreparedStatement pstmt=null;
	  
	  String qry="insert into vehicle.in (firstname,lastname,udate,emailid,mobile_no,gender,address,city,pincode,state,userid) values( ?,?,?,?,?,?,?,?,?,?,?) ";
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("driver installed");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
		System.out.println("connection created");
		
		
		pstmt=con.prepareStatement(qry);
		pstmt.setString(1, firstname);
		pstmt.setString(2, lastname);
		pstmt.setString(3, udate);
		pstmt.setString(4, emailid);
		pstmt.setLong(5, mobile_no);
		pstmt.setString(6, gender);
		pstmt.setString(7, address);
		pstmt.setString(8, city);
		pstmt.setInt(9, pincode);
		pstmt.setString(10, state);
		pstmt.setString(11, userid);
		
		int s= pstmt.executeUpdate();
		if(s>0){
		%>
		<jsp:forward page="addperson.jsp"></jsp:forward>
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