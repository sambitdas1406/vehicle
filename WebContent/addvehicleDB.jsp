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
 <%
 try{
 
  Connection con=null;
 ResultSet rs=null;
 Statement statement = null;

 
String qry="select count(job_id)+1 from vehicle.db1";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = con.createStatement();
rs = statement.executeQuery(qry);

if (rs.next()) {
	int count = rs.getInt(1);	
	System.out.println("count---->"+count);
	
	try {
		//empid,fname,lname,designation,dob,address,phone,gender,pincode,salary
		
	  
		     int emp1=count;
		     System.out.println("emp1"+emp1);
		        String invoice1=request.getParameter("invoice");
		
		    //  int j=count;

			    //System.out.println(id1);
				  Integer job_id = emp1;
					StringBuilder job_id_as_str = new StringBuilder();
					if(null != job_id) {
						System.out.println(job_id.toString().length());
						if(job_id.toString().length() == 1)
							job_id_as_str.append("00").append(job_id.toString());
						else if(job_id.toString().length() == 2)
							job_id_as_str.append("0").append(job_id.toString());
						else
						job_id_as_str.append(job_id.toString());
					}
					String job_no ="JM/"+new SimpleDateFormat("MMddyy").format(new Date())+"/"+job_id_as_str.toString();
					System.out.println(job_no);
			  
			  
			  
			  
					String regd_no=request.getParameter("regd_no");

					String model = request.getParameter("model");

					String mileage1=request.getParameter("mileage");
					double mileage=Double.parseDouble(mileage1);

					String chassis_no=request.getParameter("chassis_no");
					String engine_no=request.getParameter("engine_no");
					String mdate=request.getParameter("mdate");
					String sdate=request.getParameter("sdate");
					String firstname=request.getParameter("firstname");
					String lastname=request.getParameter("lastname");
					String emailid=request.getParameter("emailid");
					String nature=request.getParameter("nature");
					String gender=request.getParameter("gender");
					String address=request.getParameter("address");

					String mobile_no1=request.getParameter("mobile_no");
					Long mobile_no=Long.parseLong(mobile_no1);

					String pincode1=request.getParameter("pincode");
					int pincode=Integer.parseInt(pincode1);

	Connection conn=null;
	PreparedStatement pstmt=null;

	String qry1="insert into vehicle.db1(job_no,regd_no,model,mileage,chassis_no,engine_no,mdate,sdate,   firstname,lastname,emailid,nature,gender,address,mobile_no,pincode) values(?,?,?,?,?,?,? ,?,?,?,?,?,?,?,?,?) ";
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("driver installed");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
	System.out.println("connection created");


	pstmt=con.prepareStatement(qry1);

	pstmt.setString(1, job_no);
	pstmt.setString(2, regd_no);

	pstmt.setString(3, model);
	pstmt.setDouble(4, mileage);
	pstmt.setString(5, chassis_no);
	pstmt.setString(6, engine_no);
	pstmt.setString(7, mdate);
	pstmt.setString(8, sdate);
	pstmt.setString(9, firstname);
	pstmt.setString(10, lastname);
	pstmt.setString(11, emailid);
	pstmt.setString(12, nature);
	pstmt.setString(13, gender);
	pstmt.setString(14, address);
	pstmt.setLong(15, mobile_no);
	pstmt.setInt(16, pincode);
	int s= pstmt.executeUpdate();
	if(s>0){
		response.sendRedirect("addvehicle.jsp");
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
}
%>
<%
 //close all the connections.
rs.close();
statement.close();
con.close();
} catch (Exception ex) {
%>
<%
out.println("Unable to connect to database.");
}
%>


 <%Random rand = new Random();
    int randomnumber = rand.nextInt(90000) + 10000;
    
    %>
   


</body>
</html>