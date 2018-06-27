<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Vehicle Management</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">VEHICLE <span>MANAGEMENT</span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<%
if(request.getParameter("current")!=null&&request.getParameter("new")!=null&&request.getParameter("confirm")!=null)
{
	String currentPassword=request.getParameter("current");
	String Newpass=request.getParameter("new");
	String conpass=request.getParameter("confirm");
	String connurl = "jdbc:mysql://localhost:3306/vehicle";
	Connection con=null;
	String pass="";
	String  uname="";
	try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(connurl, "root", "sambit");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from vehicle.adminlogin  where pass='"+currentPassword+"'");

	while(rs.next()){
	uname=rs.getString(1);
	pass=rs.getString(2);
	} System.out.println(uname+ " "+pass);
	if(pass.equals(currentPassword)){
	Statement st1=con.createStatement();
	int i=st1.executeUpdate("update vehicle.adminlogin set pass='"+Newpass+"' where uname='"+uname+"'");
	
	out.println("Password changed successfully");
	%>
	  <a href="index.jsp" class="btn btn-info" role="button">Login Here</a>
	
	<% 
	st1.close();
	con.close();
	}
	else{
	out.println("Invalid Current Password");
	
	}
	}
	catch(Exception e){
	out.println(e);
	}
}

%>
		
		</div>
	</div>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>

</html>