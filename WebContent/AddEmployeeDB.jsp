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
 
 <%Random rand = new Random();
    int randomnumber = rand.nextInt(90000) + 10000;
    
    %>
<%
try {
	//empid,fname,lname,designation,dob,address,phone,gender,pincode,salary
	
  
	     int emp1=randomnumber;
	     System.out.println("emp1"+emp1);
	
	
		 // String emp=request.getParameter("empid");
       //   int id1=Integer.parseInt(emp);

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
				String id ="EMP/"+new SimpleDateFormat("MMddyy").format(new Date())+"/"+job_id_as_str.toString();
				System.out.println(id);
		  
		  
		  
		  
          
         String firstname=request.getParameter("fname");
         String lastname=request.getParameter("lname");
         String designation=request.getParameter("designation");
         String dob=request.getParameter("dob");
         String gender=request.getParameter("gender");
         String address=request.getParameter("address");
        
        String phone1=request.getParameter("phone");
       // int phone=Integer.parseInt(phone1);
        long phone=Long.parseLong(phone1);
        String pincode1=request.getParameter("pincode");
        int  pincode=Integer.parseInt(pincode1);
        
        String salary1=request.getParameter("salary");
        float salary =Float.parseFloat(salary1);


Connection con=null;
PreparedStatement pstmt=null;

String qry="insert into vehicle.employee (id,firstname,lastname,designation,dob,gender,address,phone,pincode,salary) values( ?,?,?,?,?,?,?,?,?,?) ";
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver installed");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
System.out.println("connection created");


pstmt=con.prepareStatement(qry);

pstmt.setString(1, id);
pstmt.setString(2, firstname);
pstmt.setString(3, lastname);
pstmt.setString(4, designation);
pstmt.setString(5, dob);
pstmt.setString(6, gender);
pstmt.setString(7, address);

pstmt.setLong(8, phone);
pstmt.setInt(9, pincode);
pstmt.setFloat(10, salary);

int s= pstmt.executeUpdate();
if(s>0){
	response.sendRedirect("AddEmployee.jsp");
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