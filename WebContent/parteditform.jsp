<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">


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
			
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Data</li>
				</ol>

			</div>
			<div id="page-inner">


			
<%@page import= " org.part.javaApp.PartDAO, org.part.javaApp.Part,java.util.*"%> 
<%  
String id=request.getParameter("id");  
Part u=PartDAO.getRecordById(Integer.parseInt(id));  
%>  
	<div class="col-lg-12 well">
 <h3 align="center" style="color:#4f7202;">PART EDIT  FORM</h3><BR>
 </div>

<div class="container">
	<div class="row">
  <form action="editpart.jsp" method="post">				
					<div class="col-sm-12">
					
					<div class="row">
					 <input type="hidden" name="id" value="<%=u.getId() %>"/>  
							<div class="col-sm-6 form-group">
								PartName
								<input type="text" name="partname" spellcheck="false" value="<%= u.getPartname()%>" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								PartDesc
								<input type="text" name="partdesc" spellcheck="false" value="<%= u.getPartdesc()%>"class="form-control">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								BrandName
								<input type="text" name="brandname" spellcheck="false"value="<%= u.getBrandname()%>" class="form-control" >
							</div>
							<div class="col-sm-6 form-group">
								BrandDesc
								<input type="text" name="branddesc" spellcheck="false"value="<%= u.getBranddesc()%>" class="form-control">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								Count
								<input type="text" name="count" value="<%= u.getCount()%>"  class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								Price
								<input type="text" name="price" value="<%= u.getPrice()%>" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
							 Date
								<input type="date" value="<%= u.getUdate()%>" id="date" name="udate" placeholder="DD/MM/YYYY" class="form-control">
							</div>
						</div>	
						    
						
					
					
					  <input type="submit" value="Edit Part" name="Edit Part" class="btn btn-lg btn-info"/>
									
					</div>
				</form> 
				</div>
	
	</div>



			
		<!--  <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
		
		<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  -->
				
				<!-- <a href="view.jsp?page=1">1</a>  
<a href="view.jsp?page=2">2</a>  
<a href="view.jsp?page=3">3</a> -->



			</div>
		</div>

		<div class="fixed-action-btn horizontal click-to-toggle">
			<a class="btn-floating btn-large red"> <i class="material-icons">menu</i>
			</a>
			<ul>
				<li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
				<li><a class="btn-floating yellow darken-1"><i
						class="material-icons">format_quote</i></a></li>
				<li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
				<li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
			</ul>
		</div>

		<footer>
			<p>
				All right reserved. Template by: <a
					href="https://webthemez.com/admin-template/">WebThemez.com</a>
			</p>


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