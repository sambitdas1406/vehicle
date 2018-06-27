<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ page import="java.sql.*" %>
     <%@page import="org.jsp.bean.UserDao"%>  
    <jsp:useBean id="u" class="org.jsp.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
 <link rel="stylesheet" href="css/bootstrap.css">
    <style>
      @import url(http://fonts.googleapis.com/css?family=Bree+Serif);
      body, h1, h2, h3, h4, h5, h6{
      font-family: 'Bree Serif', serif;
      }
    </style>



	<meta charset="utf-8" />
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
							</ul>
						</li>
					</ul>

				</div>

			</nav>
			<!-- /. NAV SIDE  -->

			<div id="page-wrapper">
				
				<div id="page-inner">

					<div class="row">
	          <div class="input-field col s6">
	            <%
String id1= request.getParameter("mobile");
long mobile_no=Long.parseLong(id1);
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String qry="select * from  vehicle.db1   where mobile_no=?";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
pstmt=con.prepareStatement(qry);
pstmt.setLong(1, mobile_no);
rs=pstmt.executeQuery();
if(!rs.next()) {
    out.println("Sorry, could not find that vehicle  . ");
} else {

%>
<!-- PRINT STARTS HERE -->

    <div class="container">
      <div class="row">
        <div class="col-xs-6">
         <p>User  Information Invoice </p>
        </div>
        <div class="col-xs-6 text-right">
          <h1>User Information</h1>
          <h1><small>Invoice Date  <%= new java.util.Date() %></small></h1>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-5">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>From: <a href="#">Your Name</a></h4>
            </div>
            <div class="panel-body">
              <p>
               JAGANNATH MOTOR <br>
                Authorised Service Centre<br>
                Address:Nalco Square,<br>
                  Semiliguda,Koraput
              </p>
            </div>
          </div>
        </div>
        <div class="col-xs-5 col-xs-offset-2 text-right">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>To : <a href="#">Client Name</a></h4>
            </div>
            <div class="panel-body">
               <p>
                              <b>First Name:</b> <%= rs.getString(9) %> <br>
              
                <b> last Name: </b> <%= rs.getString(10) %> <br>
                
                
                    <b>Email_id: </b>  <%= rs.getString(11) %><br>
                
                                 <b>Mobile_no: </b> <%= rs.getString(15) %> <br>
                
               
              </p>
            </div>
          </div>
        </div>
      </div>
      <!-- / end client details section -->
     
      
      <div class="row">
        <div class="col-xs-5">
          <div class="panel panel-info">
            <div class="panel-heading">
              <h4>Contact details</h4>
            </div>
            <div class="panel-body">
               <div class="panel-body">
              Email :<br>
               jagannathmotor.semiliguda@gmail.com <br><br>
                  Mobile :9437138319 <br> <br>
                  Twitter : <a href="#">@vehicle</a><br>
            </div>
            </div>
          </div>
        </div>
        <div class="col-xs-7">
          <div class="span7">
            <div class="panel panel-info">
              <div class="panel-heading">
                <h4>Vehicle Details</h4>
              </div>
              <div class="panel-body">
               <p>
                 <b> job_no:</b>  <%= rs.getString(2) %> <br><br>
                  <b> regdno:</b> <%= rs.getString(3) %><br>
                  <b> model : </b><%= rs.getString(4) %><br>
                  <b> mileage:</b><%= rs.getString(5) %><br>
                  <b> chassis_no:</b><%= rs.getString(6) %><br>
                  <b> engine_no:</b><%= rs.getString(7) %><br>
                </p>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <!-- PRINT ENDS HERE -->
 
       <% 
           } 
       %>
    
  <input type="button" value="Print" onclick="mynewevt(); window.print();" />
        <script>
        function mynewevt(){        	
        	document.getElementById("sideNav").classList.add('close');
        	document.getElementById("main-menu").style.display="none";
        }
        </script>





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