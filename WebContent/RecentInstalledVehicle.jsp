<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*" %>
<head>


<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin Panel</title>

<!-- For Data table -->
<link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<link href="assets/js/dataTables/dataTables.bootstrap.js" rel="stylesheet" />
<link href="assets/js/dataTables/jquery.dataTables.js" rel="stylesheet" />

<link href="https://code.jquery.com/jquery-3.3.1.js" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" rel="stylesheet" />
<link href="cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js" rel="stylesheet" />



<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>


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
				<a class="navbar-brand waves-effect waves-dark" href="home1.jsp"><i
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
							
						</ul>
						</li>
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
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Data</li>
				</ol>

			</div>
			
			<div id="page-inner">
			
																		<a  href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;">DashBoard </a>
																										<a href="addvehicle.jsp" class="waves-effect waves-light btn green" style="float: right;">Add new </a>
																		
			<br><br><br>
    <h2 align="center"style="color:#424bf4;"class="well">RECENT REGISTERED VEHICLE</h2>


<% 
							 try{
 
  Connection conn=null;
 PreparedStatement pstmt=null;
 ResultSet result=null;
 Statement statement = null;

 
String qry="select *  from vehicle.db1 where sdate = CURDATE() ";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = conn.createStatement();
result = statement.executeQuery(qry);
%>
<table  class="table table-striped table-bordered" style="width:100%">
<tr>
<td>Id</td>
<td>Job_no</td>
<td>Regd_No</td>
<td>Model</td>

<td>Manufacturing_Date</td>
<td>Service Date</td>
<td>FirstName</td>
<td>Last Name</td>
<td>Email</td>
<td>Gender</td>
<td>Mobile_No</td>
<td>Action</td>


</tr>
<%
while (result.next()) {
%>
<TR>
<TD><%=result.getInt(1)%></TD>
<TD><%=result.getString(2)%></TD>
<TD><%=result.getString(3)%></TD>
<TD><%=result.getString(4)%></TD>

<TD><%=result.getString(8)%></TD>
<TD><%=result.getString(9)%></TD>
<TD><%=result.getString(10)%></TD>
<TD><%=result.getString(11)%></TD>
<TD><%=result.getString(12)%></TD>
<TD><%=result.getString(14)%></TD>
<TD><%=result.getLong(16)%></TD>
<td style="padding:12px 20px;    margin-right: 10px;"class="btn orange"><a href="UpdateRecentVehicle.jsp?job_id=<%=result.getString("job_id")%>"><i style="color:#ffff" class="fa fa-edit" ></i></a></td>

</TR>
							
									



<% } %>
<%
// close all the connections.
result.close();
statement.close();
conn.close();
} catch (Exception ex) {
%>
						
		<%
out.println("Unable to connect to database.");
}
%>		
</TABLE>


			
		<!--  <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
		
		<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  -->
				
				<!-- <a href="view.jsp?page=1">1</a>  
<a href="view.jsp?page=2">2</a>  
<a href="view.jsp?page=3">3</a> -->



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