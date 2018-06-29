<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="org.jsp.bean.User,org.jsp.bean.UserDao,java.util.*"%>
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
				<a class="navbar-brand waves-effect waves-dark" href="#"><i
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
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Vehicle Master</a></li>
					<li class="active">Data</li>
				</ol>

			</div>
			<div id="page-inner">


				<h2>Vehicle Information</h2>
								<a href="addvehicle.jsp" class="waves-effect waves-light btn green" style="float: right;">Add new </a>
				
				<%
					String spageid = request.getParameter("page");
					int pageid = 1;
					if (null != spageid && !spageid.isEmpty()) {
						pageid = Integer.parseInt(spageid);
					}

					int total = 5;
					if (pageid == 1) {
					} else {
						pageid = pageid - 1;
						pageid = pageid * total + 1;
					}

					List<User> list = UserDao.getIndexedRecords(pageid, total);
					//List<User> list=UserDao.getAllRecords();  
					int count = list.size();
					//System.out.println(count);
					//System.out.println("No of Record: " + count);
					out.print("<h5>Page No: " + spageid + "</h5>");

					request.setAttribute("list", list);

					//Prepare for pagination
				//	System.out.println("allRecordCount Started");
					Integer allRecordCount = UserDao.getAllRecords();
				//	System.out.println("allRecordCount Ended " + allRecordCount);

					Double index = (double) allRecordCount / 5;
					Integer paginationCount = (int) Math.ceil(index);
					StringBuilder paginationHTML = new StringBuilder();
					for (int ctr = 1; ctr <= paginationCount; ctr++) {
						paginationHTML.append("<a href=\"view.jsp?page=").append(ctr).append("\">").append(ctr)
								.append("</a>  ");
						//System.out.println(paginationHTML);
					}
				%>


				<table class="table table-hover">
					<tr>
						<th>job_id</th>
						<th>job_no</th>
						<th>regd_no</th>
						<th>model</th>
						<th>mileage</th>
						<th>chassis_no</th>
						<th>engine_no</th>
						<th>Manufacture Date</th>

						<th>Action</th>
						
						

					</tr>

					<c:forEach items="${list}" var="u">
						<tr>
							<td>${u.getJob_id()}</td>
							<td>${u.getJob_no()}</td>
							<td>${u.getRegd_no()}</td>
							<td>${u.getModel()}</td>
							<td>${u.getMileage()}</td>
							<td>${u.getChassis_no()}</td>
							<td>${u.getEngine_no()}</td>
							<td>${u.getMdate()}</td>
							

							<td style="padding:12px 20px;    margin-right: 10px;"class="btn red"><a href="deleteuser.jsp?job_id=${u.getJob_id()}"><i class="fa fa-trash red"></i></a></td>
							<td style="padding:12px 20px;    margin-right: 10px;"class="btn orange"><a href="editform.jsp?job_id=${u.getJob_id()}"><i style="color:#ffff" class="fa fa-edit" ></i></a></td>
						</tr>
					</c:forEach>
				</table>
				
				<!-- <a href="view.jsp?page=1">1</a>  
                <a href="view.jsp?page=2">2</a>  
                <a href="view.jsp?page=3">3</a> -->
                
               <ul class="pagination">
               <li><%=paginationHTML%></li>
                </ul> 		


			</div>
		</div>

		

		<footer>
			<p>
				
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