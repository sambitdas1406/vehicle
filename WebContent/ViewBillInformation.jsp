<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*" %>
<head>


<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin Panel</title>

<!-- For Data table -->
<link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<link href="assets/js/dataTables/dataTables.bootstrap.js" rel="stylesheet" />
<link href="assets/js/dataTables/jquery.dataTables.js" rel="stylesheet" />

<link href="https://code.jquery.com/jquery-3.3.1.js" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" rel="stylesheet" />
<link href="cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js" rel="stylesheet" />



<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>


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
					<li><a href="#">Dashboard</a></li>
					<li class="active">Data</li>
				</ol>

			</div>
			<div id="page-inner">
											
											<a href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;">DashBoard </a>

								<a href="invoice.jsp" class="waves-effect waves-light btn green" style="float: right;">Create Invoice </a>
								<br>
								<br>
								<br>
								

    <h2 align="center"style="color:#424bf4;"class="well">INVOICE INFORMATION</h2>
<%!
public int Converter(String str)
{  
	
	int convrtr=0; 
	if(str==null)
	{ 
		str="0";
		}
	else if((str.trim()).equals("null"))
	{ 
		str="0";
		} else if(str.equals(""))
		{ 
			str="0";
			}
	try{ 
		convrtr=Integer.parseInt(str);
		} catch(Exception e) 
	{ 
			
	}
	return convrtr;
	
	}
%>
<%
Connection con = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root", "sambit");
ResultSet rsPgin = null; 
ResultSet rsRwCn = null; 
PreparedStatement psPgintn=null;
PreparedStatement psRwCn=null;
//Number of records displayed on each page 
int iSwRws=5;
// Number of pages index displayed
int iTotSrhRcrds=10;
int iTotRslts=Converter(request.getParameter("iTotRslts"));
int iTotPags=Converter(request.getParameter("iTotPags")); 
int iPagNo=Converter(request.getParameter("iPagNo"));
int cPagNo=Converter(request.getParameter("cPagNo")); 
int iStRsNo=0; 
int iEnRsNo=0;
if(iPagNo==0)
{
	iPagNo=0;
}
else{
	iPagNo=Math.abs((iPagNo-1)*iSwRws);
}

String sqlPgintn="SELECT SQL_CALC_FOUND_ROWS * FROM vehicle.invoice limit "+iPagNo+","+iSwRws+"";
psPgintn=con.prepareStatement(sqlPgintn);
rsPgin=psPgintn.executeQuery(); 
// Count total number of fetched rows String
 String sqlRwCnt="SELECT FOUND_ROWS() as cnt";
psRwCn=con.prepareStatement(sqlRwCnt); 
rsRwCn=psRwCn.executeQuery(); 
if(rsRwCn.next())
{
	iTotRslts=rsRwCn.getInt("cnt"); 
	}


%>
<form name="frm">
 <input type="hidden" name="iPagNo" value="<%=iPagNo%>"> 
 <input type="hidden" name="cPagNo" value="<%=cPagNo%>"> 
 <input type="hidden" name="iSwRws" value="<%=iSwRws%>"> 
 <table class="table table-hover" style="width:100%" > 
 
 <tr> 

<td>Id</td>
<td>Job_no</td>
<td>Part value</td>
<td>Labour Charge</td>
<td>Discount price</td>
<td>Date</td>
<td>limitPrice</td>
<td>Bill</td>
<td>pay</td>
   </tr>
<%
	while(rsPgin.next())
	  {
%>
<tr>
<TD><%=rsPgin.getInt(1)%></TD>
<TD><%=rsPgin.getInt(2)%></TD>
<TD><%=rsPgin.getFloat(3)%></TD>
<TD><%=rsPgin.getInt(4)%></TD>
<TD><%=rsPgin.getInt(5)%></TD>
<TD><%=rsPgin.getDate(6)%></TD>
<TD><%=rsPgin.getInt(7)%></TD>
<TD><%=rsPgin.getFloat(8)%></TD>
<TD><%=rsPgin.getFloat(9)%></TD>

  </tr>
  
   <% 
   }
%>
<% 
// Calculate next record start and end position
try{
	if(iTotRslts<(iPagNo+iSwRws))
	{ 
		iEnRsNo=iTotRslts;
		}
	else
	{
		iEnRsNo=(iPagNo+iSwRws);
		}
	iStRsNo=(iPagNo+1);
	iTotPags=((int)(Math.ceil((double)iTotRslts/iSwRws)));
	} 
catch(Exception e)
{ 
	e.printStackTrace();
	} 
	%>
<tr>
<td colspan="3">
<div>

<%
//Create index of pages 
int i=0;
int cPge=0;

if(iTotRslts!=0)
{
	cPge=((int)(Math.ceil((double)iEnRsNo/(iTotSrhRcrds*iSwRws))));
	int prePageNo=(cPge*iTotSrhRcrds)-((iTotSrhRcrds-1)+iTotSrhRcrds);
	if((cPge*iTotSrhRcrds)-(iTotSrhRcrds)>0)
 	{

%>
<a href="ViewBillInformation.jsp?iPagNo=<%=prePageNo%>&cPagNo=<%=prePageNo%>"><< Previous</a>

		<%
        }
	
	for(i=((cPge*iTotSrhRcrds)-(iTotSrhRcrds-1));i<=(cPge*iTotSrhRcrds);i++)
    {
		if(i==((iPagNo/iSwRws)+1))
      	{
      	%>
<a href="ViewBillInformation.jsp?iPagNo=<%=i%>" style="cursor:pointer;color:red"><b><%=i%></b></a>

<%
} 
		else if(i<=iTotPags) 
		{ 
		%> 
		<a href="ViewBillInformation.jsp?iPagNo=<%=i%>"><%=i%></a> 
		<% 
		}
} 
	if(iTotPags>iTotSrhRcrds&& i<iTotPags) 
	{ 
	%>
	 <a href="ViewBillInformation.jsp?iPagNo=<%=i%>&cPagNo=<%=i%>">>> Next</a> 
	 <%
	 }
} 
%> 
<b>Rows <%=iStRsNo%> - <%=iEnRsNo%> Total Result <%=iTotRslts%></b> </div>

</div>
</td>
</tr>
</table>
<%
try
{ 
	if(psPgintn!=null)
	{ 
		psPgintn.close();
		} 
	if(rsPgin!=null)
	{
		rsPgin.close();
		}	
	if(psRwCn!=null)
	{ 
		psRwCn.close();
		}
	if(rsRwCn!=null)
	{
		rsRwCn.close();
		} 
	if(con!=null)
	{
		con.close(); 
		} 
	} 
catch(Exception e)
{ 
	e.printStackTrace();
	
	}
%>




			
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