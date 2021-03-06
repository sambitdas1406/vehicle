<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"

    %>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import= " org.part.javaApp.PartDAO, org.part.javaApp.Part,java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8" />

<script type="text/javascript">

function msg()
{
	var v=confirm("are you sure");
	if(v==true)
		{
		alert("ok");
		}
	else
		{
		alert("cancle");
		}
}
</script>


<script language="javascript">
function deleteRecord(eid){
    var doIt=confirm('Do you want to delete the record?');
  if(doIt){
   var f=document.form;
    f.method="post";
    f.action='DeleteEmployee.jsp?eid='+eid;
    f.submit();
    }
  else{

    }
}
</script>



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


				<h2>Employee Information</h2>
				<br><br>
				<a  href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;margin-left: 10px;">DashBoard </a>
				
				<a href="AddEmployee.jsp" class="waves-effect waves-light btn green" style="float: right;">Add Employee </a>
		<a href="ViewSalary.jsp" class="waves-effect waves-light btn green" style="float: right; margin-right:60px;">View Salary </a>
<a href="ViewLeaveEmployee.jsp" class="waves-effect waves-light btn green" style="float: right; margin-right:60px;">View Leave Employee </a>
				
			<a href="ViewTimeSheet.jsp" class="waves-effect waves-light btn green" style="float: right; margin-right:60px;">View TimeSheet </a>
				
				
				<br><br><br><br><br>
				<%@page import="java.sql.*" %>
				<%
 try{
 
  Connection con=null;
 PreparedStatement pstmt=null;
 ResultSet rs=null;
 Statement statement = null;

 
String qry="select * from vehicle.employee ";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = con.createStatement();
rs = statement.executeQuery(qry);
%>
<form name="form">
<table id="example" class="table table-hover" style="width:100%"><tr>
<td>Employee Id</td>
<td>FirstName</td>
<td>LastName</td>
<td>Designation</td>
<td>DOB</td>
<td>Gender</td>
<td>Address</td>
<td>Phone</td>
<td>Pin-code</td>
<td>Salary</td>
<td>Action</td>

</tr>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>

<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<TD><%=rs.getString(8)%></TD>
<TD><%=rs.getLong(9)%></TD>
<TD><%=rs.getInt(10)%></TD>
<TD><%=rs.getFloat(11)%></TD>
<td style="padding:12px 20px;    margin-right: 10px;"class="btn orange"><a href="UpdateEmployee.jsp?eid=<%=rs.getString(1)%>"><i style="color:#ffff" class="fa fa-edit" ></i></a></td>
<td style="padding:12px 20px;    margin-right: 10px;"class="btn red"onclick="deleteRecord(<%=rs.getString(1)%>);"><i class="fa fa-trash red" ></i></a></td>



</TR>

<% } %>
<%
// close all the connections.
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
				
	</form>			
				
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