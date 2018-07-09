<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<style type="text/css">
.tcls{display:block;}

::placeholder {
    color: red;
    opacity: 1; /* Firefox */
}

</style>
<script type="text/javascript">
function validate(frm)
{
    var ele = frm.elements['feedurl[]'];
    if (! ele.length)
    {
        alert(ele.value);
    }
    for(var i=0; i<ele.length; i++)
    {
        alert(ele[i].value);
    }
    return true;
}
function add_feed()
{    
    var i;
    var div1 = document.createElement('td');

    for (i = 0; i < 15; i++) {
    
    
    div1.className="c"+i;
    div1.className="tcls";
    
    // Get template data
    div1.innerHTML = document.getElementById('newlinktpl').innerHTML;
    // append to our form, so that template data
    //become part of form
    document.getElementById('newlink').appendChild(div1);
    }
}

function removeElement(elementId) {
   // Removes an element from the document
   var element = document.getElementById(elementId);
   element.parentNode.removeChild(element);
}
</script>

<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.t1.value;  
var url="ajaxgetdata.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;
var val1=val.split(".");

//document.getElementById('amit').innerHTML=val;  
document.getElementById('partname').value=val1[0];
document.getElementById('partprice').value=val1[1];



}  
}  
  
</script>  

	<!-- date picker -->
	
<!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />




<!--form validation  -->
<script type="text/javascript">
function validateform()

{
	var date1 = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;

	//part,labour,discount,limit
    var part=document.getElementById('part').value;
    var price=document.getElementById('price').value;
    var count=document.getElementById('count').value;

	var labour=document.myform.labour.value;
	var discount=document.myform.discount.value;
	var limit=document.myform.limit.value;
	//var date=document.myform.date.value;
	
	if(labour==''){
     alert("Please Enter Labour charge");
	return false;
	}else if(discount==''){
    	  alert("discount can't be blank");
    		return false;
      }else if(limit==''){
    	  alert("limit can't be blank");
  		return false;
      }else if(part==''){
    	  alert("part can't be blank");
    		return false;
        }
      else if(price==''){
    	  alert("price can't be blank");
    		return false;
        }else if(count==''){
      	  alert("count can't be blank");
  		return false;
      }
	}


</script>

	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Admin Panel</title>
	<!-- invoice-->
	<link href="assets/css/invoice.css" rel="stylesheet" />
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
				<button type="button" class="navbar-toggle waves-effect waves-dark"
					data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand waves-effect waves-dark" href="home1.jsp"><i
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
					<h1 class="page-header">
						Invoice
					</h1>
					

				</div>
				<div id="page-inner">


<%

if( request.getParameter("partname")!=null &&request.getParameter("price")!=null && request.getParameter("count")!=null )
{
	String str1 = request.getParameter("partname");       // part name
	String str2 = request.getParameter("price");        // part price
	//int s=Integer.parseInt(str2);

	float s=Float.parseFloat(str2);
	String str3 = request.getParameter("count"); 
	int c=Integer.parseInt(str3);
	
    float add=0;
	//float results=Float.parseFloat(request.getParameter("price"));
	String[] results = request.getParameterValues("price");

	//for (int i = 0; i < results.length; i++) {
		//float s1=Float.parseFloat(results[i]);

	     //add=add+s1;
	    //System.out.println(results[i]); 
	//}
    //System.out.println("add"+add); 

	// part quantity
	String str4 = request.getParameter("add");        // submit button by name add
	String str5 = request.getParameter("list");       // submit button by name list
	//System.out.println(str1);
	//System.out.println(s);
	//System.out.println(c);


	if(str4 != null)    
	{    
	  Cookie c1 = new Cookie(str1, str2); 
	  c1.setMaxAge(1*60);
	  //c1.setValue("");                              
	  response.addCookie(c1);  
	//  c1.setMaxAge();

	  response.sendRedirect("viewpart.jsp?page=1"); 
	}			                                                         
	else if(str5 != null)  
	{ 
	  Cookie[] clientCookies = request.getCookies(); 
	  if(clientCookies!=null)
	  {
		  for( int i = 0; i < clientCookies.length; i++)     
		  {
			  clientCookies[i].setMaxAge(1*60);
		    out.println("<B>" + clientCookies[i].getName() + " : " + clientCookies[i].getValue() + "</B><BR>");
		  }   
	  }
	              
	}

}


%>


	<a href="viewpart.jsp?page=1" class="waves-effect waves-light btn green" style="float: right;">View Part </a>
			
			
<a href="home1.jsp" class="waves-effect waves-light btn green" style="float: left;">DashBoard </a>
			
			
 <form name="myform" action="calc.jsp" method="post" onsubmit="return validateform()" >
  <table align="" cellpadding = "10">
  
  <tr>
  <td>JOB NO: </td>
  <td><input type="text" name="job_no" value="" size="20" style="width: 150px;"required/></td>
 </tr>
  <br>
  
  <br>
  <tr>
  <td>labour charge: </td>
  <td><input type="number" name="labour" id="labour"  size="20"style="width:150px;" /></td>
 </tr>

 <tr>
  <td>Discount: </td>
  <td><input type="number" name="discount" id="discount" value="" size="20" style="width:150px;"/></td>
 </tr>
  <tr>
  <td>Insert limit Amount for discount: </td>
  <td><input type="number" name="limit" value="" id="limit" size="20" style="width:150px;" /></td>
 </tr>
  <br>
  
<tr>
<div style="clear:both;"></div>

</tr>
  <td>Insert Part Used: </td>

<tr id="newlink">
    <td valign=top class="feed" style="display: block;">

     <input type="text" placeholder="PART  NAME" id="part"  name="part" value="" class="mcls" style="width:150px;margin: 0px 75px;">
    <input type="number" placeholder="PRICE"  id="price" name="price" value="" class="mcls" style="width:150px;margin: 0px 75px;">
       <input type="number" placeholder="QUANTITY" id="count" name="count" value="" class="mcls"  style="width:150px;margin: 0px 75px;">
    </td>
</tr>



  <tr>
<td colspan="2" align="center">
<div style="margin-top:25px;" align="center">
<input type="submit"  class="btn btn-default" value="Submit">
<input type="reset"  class="btn btn-default" value="Reset">
</div>
</td>
   </tr>
   
 </table>
</form>

<p id="addnew">
<div align="center">
    <a class="btn btn-info" href="javascript:add_feed()">Add New Part</a>
    <a class="btn btn-danger" href="" onclick="javascript:removeElement(); return false;" >Remove</a>
    </div>
</p>
 <div id="newlinktpl" style="display:none">
    <td class="feed">
      <input type="text" placeholder="PART  NAME" id="part" onkeyup="sendInfo()" name="part" value="" class="mcls" style="width:150px;margin: 0px 75px;"required>
    <input type="number" placeholder="PRICE"  id="price" name="price" value="" class="mcls" style="width:150px;margin: 0px 75px;"required>
       <input type="number" placeholder="QUANTITY" id="count" name="count" value="" class="mcls"  style="width:150px;margin: 0px 75px;"required>
    
    </td>
</div>
   <!-- Template. This whole data will be added directly to working form above -->
   <br>

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