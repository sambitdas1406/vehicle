<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ page import="java.sql.*" %>
     <%@page import="org.part.javaApp.PartDAO"%>  
    <jsp:useBean id="u" class="org.part.javaApp.Part"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>


	<meta charset="utf-8" />
	
	
	<script src="part.js"></script>
<link rel="stylesheet" type="text/css" href="part.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Category</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
	<!-- Bootstrap Styles-->
	<link href="assets/css/bootstrap.css" rel="stylesheet" />
	<!-- FontAwesome Styles-->
	<link href="assets/css/font-awesome.css" rel="stylesheet" />
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	
	<!-- Morris Chart Styles-->
	<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
	<!-- Custom Styles-->
	<link href="assets/css/custom-styles.css" rel="stylesheet" />
	<!-- Google Fonts-->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand waves-effect waves-dark" href="home.jsp"><i class="large material-icons">insert_chart</i> <strong  style="font-size: 14px;">Vehicle Management</strong></a>
				
				<div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
			</div>

			<ul class="nav navbar-top-links navbar-right"> 
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>Admin</b> <i class="material-icons right">arrow_drop_down</i></a></li>
			</ul>
		</nav>
		<!-- Dropdown Structure -->
		<ul id="dropdown1" class="dropdown-content">
			<li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
			</li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
			</li> 
			<li><a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
			</li>
		</ul>
		
			<!--/. NAV TOP  -->
			<nav class="navbar-default navbar-side" role="navigation">
				<div class="sidebar-collapse">
					<ul class="nav" id="main-menu">

						<li>
							<a class="waves-effect waves-dark" href="home1.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
						</li>
						
						<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-gear"></i> Vehicle Setting<span class="fa arrow fa-angle-right"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="addvehicle.jsp">Add vehicle parts</a>
								</li>
								
								<li>
									<a href="invoice.jsp">Invoice</a>
								</li>
							</ul>
						</li>
						
						<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-bars"></i> Vehicle <span class="fa arrow fa-angle-right"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="view.jsp?page=1">View Users</a>
								</li>
								<li>
									<a href="category.jsp">Find vehicle</a>
								</li>
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
					<h1 class="page-header">
						Manage parts
					</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">Category</li>
					</ol> 

				</div>
															<a  href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;margin-left: 40px;">DashBoard </a>
				
					   	    		<a href="viewpart.jsp?page=1" class="waves-effect waves-light btn green" style="float: right;margin-right: 60px;">View Parts </a>
				<br>
				<br>
				<div id="page-inner">

					<div class="row">
	          <div class="input-field col s6">
	          
	         
	          
	   	         
<div class="container">
    <h1 align="center"style="color:#424bf4;"class="well">PART MASTER</h1>
	<div class="col-lg-12 well">
 <h3 style="color:#4f7202;">PART REGISTRATION  FORM</h3><BR>
	
	<div class="row">
				<form action="addpart.jsp" method="post">
				
					<div class="col-sm-12">
					
					<div class="row">
							<div class="col-sm-6 form-group">
								PartName
								<input type="text" placeholder="Enter partname Here.." name="partname" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								PartDesc
								<input type="text" placeholder="Enter partdesc Here.." name="partdesc" class="form-control">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								BrandName
								<input type="text" placeholder="Enter brandname" name="brandname" class="form-control" >
							</div>
							<div class="col-sm-6 form-group">
								BrandDesc
								<input type="text" placeholder="Enter BrandDesc Here.." name="branddesc" class="form-control">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								Count
								<input type="text" placeholder="Enter count Here.."name="count" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								Price
								<input type="text" placeholder="Enter Price Here.."name="price" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
							 Date
								<input type="date" placeholder="Enter  Date Here.." id="date" name="udate" class="form-control">
							</div>
						</div>	
						    
						
					
					  <input type="submit" value="Add Part" name="Add Part" class="btn btn-lg btn-info"/>
									
					</div>
				</form> 
				</div>
	</div>
	</div>

	   




	          </div>
	        </div>
					<div class="row">
						<div class="col-md-12">
							 
							 
                			</div>
						</div>	
					
						
						
						
					
					
	
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