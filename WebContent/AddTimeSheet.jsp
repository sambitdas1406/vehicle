<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"

    %>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import= " org.part.javaApp.PartDAO, org.part.javaApp.Part,java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8" />

<style>
select{display:block !important;}
</style>






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
				
				

			</div>
			<div id="page-inner">


				<br><br>
				<a  href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;margin-left: 10px;">DashBoard </a>
				
				<a href="ViewEmployee.jsp" class="waves-effect waves-light btn green" style="float: right;">View Employee </a>
				
								<a href="ViewTimeSheet.jsp" class="waves-effect waves-light btn green" style="float: right;margin-right:60px;">View TimeSheet </a><br><br><br><br>
				
				
				<br><br><br><br>
				<%@page import="java.sql.*" %>
	
	<%
  Connection con=null;
 PreparedStatement pstmt=null;
 ResultSet rs=null;
 Statement statement = null;

 
String qry="select * from vehicle.employee ";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
statement = con.createStatement();
rs = statement.executeQuery(qry);
//while (rs.next()) {
	

%>

<div class="container">
    <h1 align="center" style="color:#424bf4;"class="well">TimeSheet Form</h1>
	<div class="col-lg-12 well">
 <h3 align="center"style="color:#4f7202;">EMPLOYEE TIMESHEET  FORM</h3><BR>
	
	<div class="row">
				<form action="AddTimeSheetDB.jsp" method="post"  >
				
					<div class="col-sm-12">
					
					<div class="row">
							<div class="col-sm-6 form-group">
								Employee Id
								 <select name="eid" >
                                    <% while (rs.next()) { %>
                                   <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>     
    
                              <%}%>
                              </select>
							</div>
							<div class="col-sm-6 form-group">
								Job_No
								<input type="number" placeholder="Enter Job_No Here.."  name="job_no" class="form-control">
							</div>
							
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
								Work Title
								<input type="text"  placeholder="Enter Work Title Here.."  name="title" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								Description
								<input type="text"  placeholder="Enter Work Description Here.."  name="workdesc" class="form-control">
							</div>
							
						</div>
						<div class="row">
						
						<div class="col-sm-4 form-group">
						Hour
							<select name="hour">
            <option selected="selected" value="">Select Hour</option>
            <option value="00">00</option>
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option>
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option>
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
        </select>
        </div>
        <div class="col-sm-4 form-group">
        Minute
        <select name="min">
            <option selected="selected" value="">Select Minute</option>
            <option value="00">00</option>
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option>
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option>
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
            <option value="32">32</option>
            <option value="33">33</option>
            <option value="34">34</option>
            <option value="35">35</option>
            <option value="36">36</option>
            <option value="37">37</option>
            <option value="38">38</option>
            <option value="39">39</option>
            <option value="40">40</option>
            <option value="41">41</option>
            <option value="42">42</option>
            <option value="43">43</option>
            <option value="44">44</option>
            <option value="45">45</option>
            <option value="46">46</option>
            <option value="47">47</option>
            <option value="48">48</option>
            <option value="49">49</option>
            <option value="50">50</option>
            <option value="51">51</option>
            <option value="52">52</option>
            <option value="53">53</option>
            <option value="54">54</option>
            <option value="55">55</option>
            <option value="56">56</option>
            <option value="57">57</option>
            <option value="58">58</option>
            <option value="59">59</option>
        </select>
        </div>
   

						</div>	
						<div class="row">
							
							<div class="col-sm-6 form-group">
								Date 
								<input type="date" placeholder="Date "  id="date" name="date1" class="form-control" required>
							</div>
						</div>	
						
						
										
					
					
				
                    <input type="submit" name="submit" class="btn btn-success"class="submit action-button"  value="Submit" />		
                    <input type="reset" name="reset" class="btn btn-danger" value="reset" />				
            		
					</div>
				</form> 
				</div>
	</div>
	</div>









				
				
				
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