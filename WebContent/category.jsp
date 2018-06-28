<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@page import="org.jsp.bean.UserDao"%>  
    <jsp:useBean id="u" class="org.jsp.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<script >
function validateform()

{

	var id=document.myform.id.value;
	var mobile=document.myform.mobile.value;
	
	
	if(id==''){
     alert("id can't be blank");
	return false;
	}
	else if(mobile==''){
		 alert("mobile no can't be blank");
	return false;
	}
	

}
function validate()
{
	var id=document.form.id.value;
	if(id==''){
		   alert("id can't be blank");
			return false;
	}
	
}
</script>




	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Search Vehicle</title>
	
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
				<a class="navbar-brand waves-effect waves-dark" href="#"><i class="large material-icons">insert_chart</i> <strong  style="font-size: 14px;">Vehicle Management</strong></a>
				
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
						Search Category
					</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						
					</ol> 

				</div>
				<div id="page-inner">
		<a  href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;margin-left: 3px;">DashBoard </a>
<br>
<br>
<br>

					<div class="row">
	          <div class="input-field col s6">
	          
	            <form name="form" ACTION="basic.jsp" METHOD="POST" onsubmit="return validate()" >
                <tr><td><font style="color: navy;">Find Vehicle:-</font>
            Please enter the ID of the vehicle you want to find:
            <BR>
            <INPUT type="text" align="right" name="id" placeholder="type vehicle id">
            <BR>
            <INPUT TYPE="SUBMIT" class="btn btn-default" value="Submit">
        </form>	
        
        <br><br>
            <FORM name="myform" ACTION="userinformation.jsp" METHOD="POST" onsubmit="return validateform()">
                <tr><td><font style="color: navy;">Find User:-</font>
            Please enter the Mobile Number  of the User you want to find:
            <BR>
            <INPUT type="text" align="right" name="mobile" maxlength="10" placeholder="type mobile number">
            <BR>
            <INPUT TYPE="SUBMIT" class="btn btn-default" value="Submit">
        </FORM>	
        
         <br><br>
            <FORM  ACTION="PastInformation.jsp" METHOD="POST" >
                <tr><td><font style="color: navy;">Find Past InforMation:-</font>
            Please enter the JOB_NO of the User you want to find Past Information:
            <BR>
            <INPUT type="text" align="right" name="jobno"  placeholder="type JOB_NO number" required>
            <BR>
            <INPUT TYPE="SUBMIT" class="btn btn-default" value="Submit">
        </FORM>	
        
        		
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