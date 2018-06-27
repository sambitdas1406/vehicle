<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
				<a class="navbar-brand waves-effect waves-dark" href="home1.jsp"><i class="large material-icons">insert_chart</i> <strong  style="font-size: 14px;">Vehicle Management System</strong></a>
				
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
							<a class="active-menu waves-effect waves-dark" href="home1.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
						</li>
						
						<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-gear"></i>Vehicle Setting<span class="fa arrow fa-angle-right"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="adduser.jsp">Add vehicle parts</a>
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
						
						<!-- <li>
							<a href="ui-elements.html" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> UI Elements</a>
						</li>
						<li>
							<a href="chart.html" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> Charts</a>
						</li>
						<li>
							<a href="tab-panel.html" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
						</li>

						<li>
							<a href="table.html" class="waves-effect waves-dark"><i class="fa fa-table"></i> Responsive Tables</a>
						</li>
						<li>
							<a href="form.html" class="waves-effect waves-dark"><i class="fa fa-edit"></i> Forms </a>
						</li>


						<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="#">Second Level Link</a>
								</li>
								<li>
									<a href="#">Second Level Link</a>
								</li>
								<li>
									<a href="#">Second Level Link<span class="fa arrow"></span></a>
									<ul class="nav nav-third-level">
										<li>
											<a href="#">Third Level Link</a>
										</li>
										<li>
											<a href="#">Third Level Link</a>
										</li>
										<li>
											<a href="#">Third Level Link</a>
										</li>

									</ul>

								</li>
							</ul>
						</li>
						<li>
							<a href="empty.html" class="waves-effect waves-dark"><i class="fa fa-fw fa-file"></i> Empty Page</a>
						</li> -->
					</ul>

				</div>

			</nav>
			<!-- /. NAV SIDE  -->

			<div id="page-wrapper">
				<div class="header"> 
					<h1 class="page-header">
						Dashboard
					</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="home1.jsp">Dashboard</a></li>
						<li class="active">Data</li>
					</ol> 

				</div>
				

			
				
				
				
				<div id="page-inner">

			
<!-- Recent Installed Vehicle  -->
				
							
										 <%
 try{
 
  Connection con=null;
 PreparedStatement pstmt=null;
 ResultSet rs=null;
 Statement statement = null;

 
String qry="select count(*)  from vehicle.db1 where sdate = CURDATE() ";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = con.createStatement();
rs = statement.executeQuery(qry);
%>

<%
while (rs.next()) {
	int rowCount = rs.getInt(1);
  //  System.out.println(rowCount);
%>
	
							<div class="col-xs-12 col-sm-6 col-md-3">

							<div class="card horizontal cardIcon waves-effect waves-dark">
								<div class="card-image purple" style="width: 72px;">
								<i class="glyphicon glyphicon-filter"></i>
								</div>
								<div class="card-stacked">
									<div class="card-content">
										<h3 align="center"><%=rs.getInt(1)%></h3> 
									</div>
									<div class="card-action">
									 
                                  <p  align="center"> <a href="RecentInstalledVehicle.jsp">Click Here</a></p>
                                  </div>
										<p align="center"><strong>RECENTLY REGISTERED</strong></p>
									</div>
								</div>
							</div> 





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
							
	<!-- view Registered vehicle -->							
			
	<% 
							 try{
 
  Connection conn=null;
 PreparedStatement pstmt=null;
 ResultSet result=null;
 Statement statement = null;

 
String qry="select count(*) from vehicle.db1 ";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = conn.createStatement();
result = statement.executeQuery(qry);
%>

<%
while (result.next()) {
	int Count = result.getInt(1);
   // System.out.println(Count);
%>
	
							<div class="col-xs-12 col-sm-6 col-md-3">

							<div class="card horizontal cardIcon waves-effect waves-dark">
								<div class="card-image green"  style="width: 72px;">
								<i class="glyphicon glyphicon-user"></i>
								</div>
								<div class="card-stacked">
									<div class="card-content">
										<h3 align="center"><%=result.getInt(1)%></h3> 
									</div>
									<div class="card-action">
									 
                                  <p  align="center"> <a href="view.jsp?page=1">Click Here</a></p>
                                  </div>
										<p align="center"><strong>REGISTERED VEHICLE</strong></p>
									</div>
								</div>
							</div> 




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
									
					
						<% 
							 try{
 
  Connection conn=null;
 PreparedStatement pstmt=null;
 ResultSet result=null;
 Statement statement = null;

 
String qry="select count(*) from vehicle.invoice ";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = conn.createStatement();
result = statement.executeQuery(qry);
%>

<%
while (result.next()) {
	int Count = result.getInt(1);
   // System.out.println(Count);
%>
	
						
								<div class="col-xs-12 col-sm-6 col-md-3">

							<div class="card horizontal cardIcon waves-effect waves-dark">
								<div class="card-image blue"  style="width: 72px;">
								<i class="glyphicon glyphicon-list-alt"></i>
								</div>
								<div class="card-stacked">
									<div class="card-content">
										<h3 align="center"><%=result.getInt(1)%></h3> 
									</div>
									<div class="card-action">
									 
                                  <p  align="center"> <a href="ViewBillInformation.jsp">Click Here</a></p>
                                  </div>
										<p align="center"><strong>INVOICE CREATED</strong></p>
									</div>
								</div>
							</div> 




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
	
							
							
							
										 <%
 try{
 
  Connection con=null;
 PreparedStatement pstmt=null;
 ResultSet rs=null;
 Statement statement = null;

 
String qry="select count(*) from vehicle.part ";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = con.createStatement();
rs = statement.executeQuery(qry);
%>

<%
while (rs.next()) {
	int rowCount = rs.getInt(1);
  //  System.out.println(rowCount);
%>
	
							<div class="col-xs-12 col-sm-6 col-md-3">

							<div class="card horizontal cardIcon waves-effect waves-dark">
								<div class="card-image red" style="width: 72px;">
								<i class="glyphicon glyphicon-plus"></i>
								</div>
								<div class="card-stacked">
									<div class="card-content">
										<h3 align="center"><%=rs.getInt(1)%></h3> 
									</div>
									<div class="card-action">
									 
                                  <p  align="center"> <a href="viewpart.jsp?page=1">Click Here</a></p>
                                  </div>
										<p align="center"><strong>TOTAL PARTS</strong></p>
									</div>
								</div>
							</div> 





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
	
<% 
							 try{
 
  Connection conn=null;
 PreparedStatement pstmt=null;
 ResultSet result=null;
 Statement statement = null;

 
String qry="select count(*) from vehicle.db1 ";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = conn.createStatement();
result = statement.executeQuery(qry);
%>

<%
while (result.next()) {
	int Count = result.getInt(1);
   // System.out.println(Count);
%>
	
							<div class="col-xs-12 col-sm-6 col-md-3">

							<div class="card horizontal cardIcon waves-effect waves-dark">
								<div class="card-image text-white"  style="width: 72px;">
								<i class="glyphicon glyphicon-search"></i>
								</div>
								<div class="card-stacked">
									<div class="card-content">
										<h3 align="center"><%=result.getInt(1)%></h3> 
									</div>
									<div class="card-action">
									 
                                  <p  align="center"> <a href="category.jsp">Click Here</a></p>
                                  </div>
										<p align="center"><strong>SEARCH VEHICLE</strong></p>
									</div>
								</div>
							</div> 




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
							
						
				</div>	


					<!-- <div class="row">
						<div class="col-xs-12 col-sm-6 col-md-3"> 
							<div class="card-panel text-center">
								<h4>Profit</h4>
								<div class="easypiechart" id="easypiechart-blue" data-percent="82" ><span class="percent">82%</span>
								</div> 
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-3"> 
							<div class="card-panel text-center">
								<h4>No. of Visits</h4>
								<div class="easypiechart" id="easypiechart-red" data-percent="46" ><span class="percent">46%</span>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-3"> 
							<div class="card-panel text-center">
								<h4>Customers</h4>
								<div class="easypiechart" id="easypiechart-teal" data-percent="84" ><span class="percent">84%</span>
								</div> 
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-3"> 
							<div class="card-panel text-center">
								<h4>Sales</h4>
								<div class="easypiechart" id="easypiechart-orange" data-percent="55" ><span class="percent">55%</span>
								</div>
							</div>
						</div> 
					</div> -->
					<!--/.row-->



					<!-- <div class="row">
						<div class="col-md-5"> 
							<div class="card">
								<div class="card-image">
									<div id="morris-line-chart"></div>
								</div> 
								<div class="card-action">
									<b>Line Chart</b>
								</div>
							</div>

						</div>		

						<div class="col-md-7"> 
							<div class="card">
								<div class="card-image">
									<div id="morris-bar-chart"></div>
								</div> 
								<div class="card-action">
									<b> Bar Chart Example</b>
								</div>
							</div>					
						</div>

					</div> 



					<div class="row">
						<div class="col-md-9 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-image">
									<div id="morris-area-chart"></div>
								</div> 
								<div class="card-action">
									<b>Area Chart</b>
								</div>
							</div>	 
						</div>
						<div class="col-md-3 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-image">
									<div id="morris-donut-chart"></div>
								</div> 
								<div class="card-action">
									<b>Donut Chart Example</b>
								</div>
							</div>	 
						</div>

					</div>
					<div class="row">
						<div class="col-md-12">

						</div>		
					</div>  -->	
					<!-- /. ROW  -->





					<!-- <div class="row">
						<div class="col-md-4 col-sm-12 col-xs-12">
							<div class="card"><div class="card-action">
								<b>Tasks Panel</b>
							</div>
							<div class="card-image">
								<div class="collection">
									<a href="#!" class="collection-item">Red<span class="new badge red" data-badge-caption="red">4</span></a>
									<a href="#!" class="collection-item">Blue<span class="new badge blue" data-badge-caption="blue">4</span></a>
									<a href="#!" class="collection-item"><span class="badge">1</span>Alan</a>
									<a href="#!" class="collection-item"><span class="new badge">4</span>Alan</a>
									<a href="#!" class="collection-item">Alan<span class="new badge blue" data-badge-caption="blue">4</span></a>
									<a href="#!" class="collection-item"><span class="badge">14</span>Alan</a>
									<a href="#!" class="collection-item">Custom Badge Captions<span class="new badge" data-badge-caption="custom caption">4</span></a>
									<a href="#!" class="collection-item">Custom Badge Captions<span class="badge" data-badge-caption="custom caption">4</span></a>
								</div>
							</div> 

						</div>	  

					</div>
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">
								<b>User List</b>
							</div>
							<div class="card-image">
								<ul class="collection">
									<li class="collection-item avatar">
										<i class="material-icons circle green">insert_chart</i>
										<span class="title">Title</span>
										<p>First Line <br>
											Second Line
										</p>
										<a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
									</li>
									<li class="collection-item avatar">
										<i class="material-icons circle">folder</i>
										<span class="title">Title</span>
										<p>First Line <br>
											Second Line
										</p>
										<a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
									</li>
									<li class="collection-item avatar">
										<i class="material-icons circle green">insert_chart</i>
										<span class="title">Title</span>
										<p>First Line <br>
											Second Line
										</p>
										<a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
									</li>
									<li class="collection-item avatar">
										<i class="material-icons circle red">play_arrow</i>
										<span class="title">Title</span>
										<p>First Line <br>
											Second Line
										</p>
										<a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
									</li>
								</ul>
							</div>  
						</div>	 



					</div>
				</div> -->
				<!-- /. ROW  -->
			
				


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