<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.jsp.bean.UserDao,org.jsp.bean.User,java.util.*"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Admin Panel</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
	<!-- Bootstrap Styles-->
	<link href="assets/css/bootstrap.css" rel="stylesheet" />
	<!-- FontAwesome Styles-->
	<link href="assets/css/font-awesome.css" rel="stylesheet" />
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
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>John Doe</b> <i class="material-icons right">arrow_drop_down</i></a></li>
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
							<a class="active-menu waves-effect waves-dark" href="home1.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
						</li>
						<li>
							<a class="waves-effect waves-dark" href="category.jsp"><i class="fa fa-bars"></i> Catagory</a>
						</li>
						<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-gear"></i>Vehicle Setting<span class="fa arrow fa-angle-right"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="addvehicle.jsp">add vehicle parts</a>
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
									<a href="category.jsp">Find Vehicle</a>
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
					</h1>
					

				</div>
				 <h3 align="center" style="color:#4f7202;">VEHICLE REGISTRATION EDIT FORM</h3> 
				 
				<div id="page-inner">
<%  
String job_id=request.getParameter("job_id");
User u=UserDao.getRecordById(Integer.parseInt(job_id));  
//edituser.jsp
              /*
               * job_id; job_no; regd_no;date; model; mileage; chassis_no,engine_no
               */
%>  
  
  <div class="container">
    
	<div class="col-lg-12 well">
 <h3 align="center"style="color:#4f7202;"> EDIT VEHICLE REGISTRATION  FORM</h3><BR>
	
	<div class="row">
				<form action="EditVehicle.jsp" method="post"  >
				
					<div class="col-sm-12">
					
					<div class="row">
					<input type="hidden" name="job_id" value="<%=u.getJob_id() %>"/>  
					
							<div class="col-sm-6 form-group">
								RegdNo
								<input type="text"  name="regd_no" value="<%=u.getRegd_no() %>" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								Model
								<input type="text" name="model" value="<%=u.getModel() %> "class="form-control">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								Mileage
								<input type="text"  name="mileage" value="<%=u.getMileage() %>" class="form-control" >
							</div>
							<div class="col-sm-6 form-group">
								Chassis_No
								<input type="text"  name="chassis_no" value="<%=u.getChassis_no() %>" class="form-control">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								Engine_No
								<input type="text" name="engine_no" value="<%=u.getEngine_no() %>" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								Manufacturing_Date
								<input type="date"  id="date" name="mdate" value="<%=u.getMdate() %> "class="form-control"required>
							</div>
							<div class="col-sm-6 form-group">
								Service Date
								<input type="date"  id="date" name="sdate" value="<%=u.getSdate() %>"class="form-control"required>
							</div>
						</div>	
						   
				
            <input type="submit" name="submit" class="btn btn-lg btn-info" value="EDIT" />		
            		
					</div>
				</form> 
				</div>
	</div>
	</div>


  



  
  
			

				


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