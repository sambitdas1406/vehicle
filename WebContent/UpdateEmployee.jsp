<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"

    %>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import= " org.part.javaApp.PartDAO, org.part.javaApp.Part,java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8" />








<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin Panel</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle waves-effect waves-dark"
					data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand waves-effect waves-dark" href="home.jsp"><i
					class="large material-icons">insert_chart</i> <strong
					style="font-size: 14px;">Vehicle Management</strong></a>

				<div id="sideNav" href="">
					<i class="material-icons dp48">toc</i>
				</div>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown1"><i
						class="fa fa-user fa-fw"></i> <b>Admin</b> <i
						class="material-icons right">arrow_drop_down</i></a></li>
			</ul>
		</nav>
		<!-- Dropdown Structure -->
		<ul id="dropdown1" class="dropdown-content">
			<li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
			</li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
			<li><a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i>
					Logout</a></li>
		</ul>

		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a class="active-menu waves-effect waves-dark"
						href="home1.jsp"><i class="fa fa-dashboard"></i> Dashboard</a></li>

					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-gear"></i> Vehicle Setting<span
							class="fa arrow fa-angle-right"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="addvehicle.jsp">Add vehicle parts</a></li>
							
							<li><a href="invoice.jsp">Invoice</a></li>
						</ul></li>

					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-bars"></i> Vehicle <span
							class="fa arrow fa-angle-right"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="view.jsp?page=1">View Users</a></li>
							<li><a href="category.jsp"> Find Vehicle</a></li>
						  <li><a href="ViewBillInformation.jsp"> View Bill Information</a></li>
					 <li><a href="RecentInstalledVehicle.jsp"> View Recent Installed Vehicle</a></li>
				 <li><a href="viewsellpart.jsp"> View Sell Of Parts </a></li>
							
						</ul></li>
             	<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-table"></i> Part Master <span class="fa arrow fa-angle-right"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="partform.jsp">Add Parts</a>
								</li>
								<li>
									<a href="viewpart.jsp?page=1">View Available Part</a>
								</li>
								
							</ul>
						</li>
						
						<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-users"></i> Employee Management <span class="fa arrow fa-angle-right"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="ViewEmployee.jsp">View Employee</a>
								</li>
									<li>
									<a href="ViewSalary.jsp">View Salary Table</a>
								</li>
								<li>
									<a href="ViewLeaveEmployee.jsp">View LeaveEmployee</a>
								</li>
								<li>
									<a href="ViewTimeSheet.jsp">View TimeSheet</a>
								</li>
							</ul>
						</li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div class="header">
				
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Data</li>
				</ol>

			</div>
			<div id="page-inner">


				<br><br>
				<a  href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;margin-left: 10px;">DashBoard </a>
				
				<a href="AddEmployee.jsp" class="waves-effect waves-light btn green" style="float: right;">Add new </a><br><br><br><br>
				<%@page import="java.sql.*" %>
	
				<%
 try{
 
  Connection con=null;
 PreparedStatement pstmt=null;
 ResultSet rs=null;
 Statement statement = null;
 String id1 = request.getParameter("eid");
 System.out.println("id1--->"+id1);
 int id=Integer.parseInt(id1);
System.out.println("id-->"+id);
//String qry="select * from vehicle.employee where eid="+id;
String qry="select * from vehicle.employee where eid="+id;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
//statement = con.createStatement();
pstmt=con.prepareStatement(qry);
rs=pstmt.executeQuery();
//rs = statement.executeQuery(qry);
%>

<%
if (rs.next()) {
%>
<div class="container">
    <h1 align="center" style="color:#424bf4;"class="well">Update Form</h1>
	<div class="col-lg-12 well">
 <h3 align="center"style="color:#4f7202;">EMPLOYEE UPDATE  FORM</h3><BR>
	
	<div class="row">
				<form action="UpdateEmployeeProcess.jsp" method="post"  >
				
					<div class="col-sm-12">
					
					<div class="row">
							<div class="col-sm-6 form-group">
								Employee Id
								<input type="text"  placeholder="Enter Employee Id Here.." value="<%=rs.getString(2) %>" name="id" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								FirstName
								<input type="text" placeholder="Enter FirstName Here.." value="<%=rs.getString(3) %>" name="firstname" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<input type="hidden" placeholder="Enter  Here.." value="<%=rs.getString(1) %>" name="eid" class="form-control">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								Last Name
								<input type="text" placeholder="Enter Last Name" name="lastname" value="<%=rs.getString(4) %>" class="form-control" >
							</div>
							<div class="col-sm-6 form-group">
								Designation
								<input type="text" placeholder="Enter Designation Here.." value="<%=rs.getString(5) %>" name="designation" class="form-control">
							</div>
						</div>	
						<div class="row">
							
							<div class="col-sm-6 form-group">
								Date Of Birth
								<input type="date" placeholder="Enter 	Date Of Birth Here.." value="<%=rs.getString(6) %>" id="date" name="dob" class="form-control" required>
							</div>
						</div>	
						
						
										
						<div class="form-group">
							Address
							<textarea placeholder="Enter Address Here.."  name="address" rows="3"  class="form-control"><%=rs.getString(8) %></textarea>
						</div>	
						<div class="row">
								
							<div class="col-sm-4 form-group">
								Mobile No
								<input type="text" placeholder="Enter Mobile No Here.." name="phone" value="<%=rs.getString(9) %>" maxlength="10" class="form-control"required>
							</div>	
							<div class="col-sm-4 form-group">
								Gender
								 <input type="radio" name="gender" value ="male"placeholder="Gender"  style="position:relative; opacity:1;    left: 0px;
                               height: 17px;
                               width: 15px;
                               display: inline;" />Male
                               
        <input type="radio" name="gender" value ="female" placeholder="Gender"style="position:relative; opacity:1;    left: 0px;
                              height: 17px;
                              width: 15px;
                              display: inline;" />Female
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								Pincode
								<input type="text" placeholder="Enter Pincode Here.." value="<%=rs.getString(10) %>" name="pincode" maxlength="6"  class="form-control">
							</div>	
							<div class="col-sm-6 form-group">
								Employee Salary
								<input type="text" placeholder="Enter Employee Salary Here..." value="<%=rs.getString(11) %>" name="salary" class="form-control">
							</div>		
						</div>						
					
					
				
                    <input type="submit" name="submit" class="btn btn-success"class="submit action-button"  value="Submit" />		
                    <input type="reset" name="reset" class="btn btn-danger" value="reset" />				
            		
					</div>
				</form> 
				</div>
	</div>
	</div>





<%  %>
<%
// close all the connections.
}
rs.close();
statement.close();
con.close();
} catch (Exception ex) {
%>

<%
out.println("Unable to connect to database.");
}
%>
</TABLE>
				
				
				
		<!--  <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
		
		<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  -->
				



			</div>
		</div>

		
		<footer>
			


		</footer>
	</div>
	<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="assets/js/morris/morris.js"></script>


	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>

	<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>


</body>

</html>