<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ page import="java.sql.*" %>
     <%@page import="org.jsp.bean.UserDao"%>  
    <jsp:useBean id="u" class="org.jsp.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
 <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>


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
				
				<div id="page-inner">

					<div class="row">
	          <div class="input-field col s6">
	            <%
String id1= request.getParameter("jobno");
int jobno=Integer.parseInt(id1);
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String qry="SELECT * FROM vehicle.db1, vehicle.invoice WHERE  db1.job_no =? and invoice.jobno=?";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
pstmt=con.prepareStatement(qry);
pstmt.setInt(1, jobno);
pstmt.setInt(2, jobno);


rs=pstmt.executeQuery();
while(rs.next()){
	

if(!rs.next()) {
    out.println("Sorry, could not find that vehicle  . ");
} else {

%>
<!-- PRINT STARTS HERE -->

   <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="#" style="width:100%; max-width:300px;">
                            </td>
                            
                            <td>
                                Invoice #: 123<br>
                               <!--   Created: January 1, 2015<br>-->
                                Check Date: <%= new java.util.Date() %>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                               <b> JAGANNATH MOTORS</b><br>
                                Authorised Service Centre<br>
                                Nalco Square<br>
                                Semiliguda,Koraput<br>
                                Email:<br>jagannathmotor.semiliguda@gmail.com<br>
                                
                            </td>
                            
                            <td>
                               <b>FirstName :</b> <%= rs.getString(10) %><br>
                                 <b>LastName :</b> <%= rs.getString(11) %><br>
                                  <b>Email:</b><%= rs.getString(12) %><br>
                                 <b>Mobile No:</b>  <%= rs.getLong(16) %><br>
                                
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                    Vehicle Information
                </td>
                
                <td>
                   Status
                </td>
            </tr>
            
            <tr class="details">
                <td>
                  <b>Job_no:</b>  <%=rs.getString(2) %><br>
                   <b> RegdNo:</b> <%=rs.getString(3) %><br>
                   <b>Model :</b> <%=rs.getString(4) %><br>
                    <b>Mileage:</b><%=rs.getString(5) %><br>
                    <b>Service Date:</b><%=rs.getString(9) %><br>
                </td>
                
                <td>
                   N/A
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                    Past Invoice History
                </td>
                
                <td>
                    <!--  Price-->
                </td>
            </tr>
            
         <tr class="item">
                <td>
                    Invoice Date
                </td>
                
                <td>
                   <%=rs.getDate(23) %>
                </td>
            </tr>
            
            <tr class="item">
                <td>
                   Part Price
                </td>
                
                <td>
                  <%=rs.getString(20) %>
                </td>
            </tr>
            
            <tr class="item last">
                <td>
                   Labour Charges
                </td>
                
                <td>
                     <%=rs.getString(21) %>
                </td>
            </tr>
             
            <tr class="item last">
                <td>
                   Bill
                </td>
                
                <td>
                     <%=rs.getString(25) %>
                </td>
            </tr>
            <tr class="class="total">
                <td><b>Total Bill After Discount</b></td>
                
                <td>
                   <%=rs.getString(26) %>/<b>rs</b>
                </td>
            </tr>
            
        </table>
    </div>
   
   
      <!-- PRINT ENDS HERE -->
 
       <% 
           } 
       %>
       
       <%} %>
    
    <br>
    <br>
    <br>
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