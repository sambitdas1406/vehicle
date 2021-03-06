<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<style>
select{display:block !important;}
</style>
 <!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>



<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<script>
 function random(){
   //alert('h');
   function randomNumber(len) {
   var randomNumber;
   var n = '';

   for(var count = 0; count < len; count++) {
       randomNumber = Math.floor(Math.random() * 10);
       n += randomNumber.toString();
   }

   return n;
}

var finalSequence = randomNumber(9);

//document.write('<INPUT TYPE=TEXT NAME="ACCOUNT" VALUE='+finalSequence +' MAXLENGTH=16 SIZE=16>');
// document.getElementById('ACCOUNT').value=finalSequence;
document.getElementById('job_no').value=finalSequence;

 }
 
</script>

<script src="addvehicle.js" type="text/javascript"></script>



<script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
      </script>

     
      <script src = "custom.js" type = "text/javascript"></script>
      
      <script>

    //jQuery time
    var current_fs, next_fs, previous_fs; //fieldsets
    var left, opacity, scale; //fieldset properties which we will animate
    var animating; //flag to prevent quick multi-click glitches

    $(".next").click(function(){
    	if(animating) return false;
    	animating = true;
    	
    	current_fs = $(this).parent();
    	next_fs = $(this).parent().next();
    	
    	//activate next step on progressbar using the index of next_fs
    	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
    	
    	//show the next fieldset
    	next_fs.show(); 
    	//hide the current fieldset with style
    	current_fs.animate({opacity: 0}, {
    		step: function(now, mx) {
    			//as the opacity of current_fs reduces to 0 - stored in "now"
    			//1. scale current_fs down to 80%
    			scale = 1 - (1 - now) * 0.2;
    			//2. bring next_fs from the right(50%)
    			left = (now * 50)+"%";
    			//3. increase opacity of next_fs to 1 as it moves in
    			opacity = 1 - now;
    			current_fs.css({
          'transform': 'scale('+scale+')',
          'position': 'absolute'
        });
    			next_fs.css({'left': left, 'opacity': opacity});
    		}, 
    		duration: 800, 
    		complete: function(){
    			current_fs.hide();
    			animating = false;
    		}, 
    		//this comes from the custom easing plugin
    		easing: 'easeInOutBack'
    	});
    });

    $(".previous").click(function(){
    	if(animating) return false;
    	animating = true;
    	
    	current_fs = $(this).parent();
    	previous_fs = $(this).parent().prev();
    	
    	//de-activate current step on progressbar
    	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
    	
    	//show the previous fieldset
    	previous_fs.show(); 
    	//hide the current fieldset with style
    	current_fs.animate({opacity: 0}, {
    		step: function(now, mx) {
    			//as the opacity of current_fs reduces to 0 - stored in "now"
    			//1. scale previous_fs from 80% to 100%
    			scale = 0.8 + (1 - now) * 0.2;
    			//2. take current_fs to the right(50%) - from 0%
    			left = ((1-now) * 50)+"%";
    			//3. increase opacity of previous_fs to 1 as it moves in
    			opacity = 1 - now;
    			current_fs.css({'left': left});
    			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
    		}, 
    		duration: 800, 
    		complete: function(){
    			current_fs.hide();
    			animating = false;
    		}, 
    		//this comes from the custom easing plugin
    		easing: 'easeInOutBack'
    	});
    });

    $(".submit").click(function(){
    	return false;
    })


      </script>






<script>



</script>


	

<script>

</script>


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
<script>
        $('#date').datepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>
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
							<a class="active-menu waves-effect waves-dark" href="home1.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
						</li>
						
						<li>
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-gear"></i> Vehicle Setting<span class="fa arrow fa-angle-right"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="addvehicle.jsp">add vehicle parts</a>
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
									<a href="ViewLeaveEmployee.jsp">View Leave Employee</a>
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
						General Setting
					</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">Site Setting</a></li>
						<li class="active">General Setting </li>
					</ol> 

				</div>
				 															<a  href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;margin-left: 50px;">DashBoard </a>
				 								<a href="ViewEmployee.jsp" class="waves-effect waves-light btn green" style="float: right; margin-right:60px;">View Employee </a>
				 				 								<a href="ViewSalary.jsp" class="waves-effect waves-light btn green" style="float: right; margin-right:60px;">View Salary </a>
				 
				 <br>
				 <br>
				<div id="page-inner">
				<%@ page import ="java.sql.*" %>
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
    <h3 align="center" style="color:#424bf4;"class="well">SALARY TABLE</h3>
	<div class="col-lg-12 well">
 <h3 align="center"style="color:#4f7202;">EMPLOYEE SALARY  FORM</h3><BR>
	
	<div class="row">
				<form action="AddSalaryDatabase.jsp" method="post"  >
				
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
								Month
							<select name="month"required>
                            <option value="" selected>select..</option>
                            <option value="January">January</option>
                            <option value="February">February</option>
                            <option value="March">March</option>
                            <option value="April">April</option>
                            <option value="May">May</option>
                            <option value="June">June</option>
                            <option value="July">July</option>
                            <option value="August">August</option>
                            <option value="September">September</option>
                            <option value="October">October</option>
                            <option value="November">November</option>
                            <option value="December">December</option>
                            
                        </select>
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-6 form-group">
									Year
							<select name="year"required>
                            <option value="" selected>select..</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                            <option value="2028">2028</option>
                            <option value="2029">2029</option>
                            
                        </select>
							</div>
							<div class="col-sm-6 form-group">
								Salary
								<input type="number" placeholder="Enter Salary Here.." name="salary" step="any" class="form-control"  required>
							</div>
						</div>	
						
				
                    <input type="submit" name="submit" class="btn btn-success"class="submit action-button"  value="Submit" />		
                    <input type="reset" name="reset" class="btn btn-danger" value="reset" />				
            		
					</div>
				</form> 
				</div>
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