<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@page import="org.jsp.bean.UserDao"%>  
     
    <jsp:useBean id="u" class="org.jsp.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta charset="utf-8" />

	<title>Vehicle Management</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
		<!-- Invoice Styles-->
	
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
				<a class="navbar-brand waves-effect waves-dark" href="home1.jsp"><i class="large material-icons">insert_chart</i> <strong  style="font-size: 14px;">Vehicle Management</strong></a>
				
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
							<a href="#" class="waves-effect waves-dark"><i class="fa fa-gear"></i> Vehicle  Setting<span class="fa arrow fa-angle-right"></span></a>
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
									<a href="category.jsp">Category</a>
								</li>
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
					</ul>

				</div>

			</nav>
			<!-- /. NAV SIDE  -->

			<div id="page-wrapper">
				
				<div id="page-inner">

					
	          
 <%
 Connection connnection=null;
 Connection conn=null;

 PreparedStatement pstmt1=null;
 PreparedStatement pstmt2=null;

 //ResultSet rs=null;
 Statement statement = null;
 //String part = "";

 	String a[]=request.getParameterValues("part");
 	String b[]=request.getParameterValues("price");
 	String c[]=request.getParameterValues("count");

 	String part=" ";
 	
 	// logic for part quantity

 	int count1=0,qty;
 	for(int k=0;k<c.length;k++)
 	{
 		count1=Integer.parseInt(c[0]);
 		//out.println("count-->"+count1);
 		//qty=count1-1;
 		//out.println("qty-->"+qty);
 	}

 	//logic for part price

 	float add=0;
 			float price1=0;
 	for(int p=0;p<b.length;p++){
 		//out.println(Integer.parseInt(b[p])); //If integer
 	    add=add+Float.parseFloat(b[p]);
 		price1=Float.parseFloat(b[p]);
 		//out.println("price--->"+price1);
 		
 	}
 //	out.println("Total price-->"+add);

 	//logic for part name


 	for(int j=0;j<a.length;j++){
 		//part=a[j];
 		//out.println("part1-->"+part);
 	}

 	//insert database logic 

 	float price=0;
 	String partname="";
 	int count=0;
 	
 	//logic for insert data 
 	
 	
 	for(int i=0; i<a.length; i++)

 	{
 		partname=a[i];

 		price=Float.parseFloat(b[i]);
 		qty=Integer.parseInt(c[i]);
 		count=qty-1;
 		//out.println("qty-->"+count);
 		
 		//
 		//logic for inserting job_no 
 		    String job =request.getParameter("job_no");
 				
         //  int job=Integer.parseInt(job1);
 		
 		
 		   //logic  for insert current date and time
 		     java.util.Date date=new java.util.Date();
            
            java.sql.Date dateofsell =new java.sql.Date(date.getTime());
            java.sql.Timestamp selltime=new java.sql.Timestamp(date.getTime());
 		   
 		   
 		try{
 			Class.forName("com.mysql.jdbc.Driver");
 			connnection=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
 		   //  Statement st=con.createStatement();
 		    //con.setAutoCommit(false);
 		      String qry1="insert into vehicle.parthistory(part,price,count,job,dateofsell,selltime) values('"+partname+"','"+price+"','"+qty+"','"+job+"','"+dateofsell+"','"+selltime+"')";
 		     pstmt1=connnection.prepareStatement(qry1);
 				//pstmt.addBatch();
 				//String qry2="update vehicle.part set count = ? where partname = ?";
 				//pstmt=con.prepareStatement(qry2);
 				//pstmt.addBatch();
 		 //   int j=pstmt.executeUpdate("insert into vehicle.parthistory(part,price,count) values('"+partname+"','"+price+"','"+qty+"')");
 		   //  int k=pstmt.executeUpdate("update vehicle.part set count = ? where partname = ? ");
 		      int j=pstmt1.executeUpdate();

 		     // con.commit();
 		   if(j>0){
 		     //  out.println("Data is successfully inserted into database.");

 		   }
 			String qry2="update vehicle.part set  count = ? where  partname = ?";
 			pstmt2=connnection.prepareStatement(qry2);
 			
 			pstmt2.setInt(1,count);
 			pstmt2.setString(2, partname);
          //pstmt2.setInt(2,id);
           //  pstmt2.addBatch();

           //  pstmt2.setInt(2,count);
         // int arr[]=pstmt2.executeBatch();
            int k=pstmt2.executeUpdate();
             
 		   if(k>0)
 		    {
 		        //out.println("Data is  updated into database.");
//
 		    }
 		  else
 		   {
 		        //out.println("Data is unable to  update into database.");

 		  }
 		}
 		catch(Exception e){
 		System.out.println(e);
 		}
 		
 		
 	}



 	
 	

 
 
  String pn=request.getParameter("job_no");

  //String qnty=request.getParameter("part");

  String pr=request.getParameter("labour");
  
  String discount1=request.getParameter("discount");
  
  //String date =request.getParameter("date");
  

  
  
  String limit1=request.getParameter("limit");
  
  
  
  //int s=Integer.parseInt(pn);
  
  //int q=Integer.parseInt(qnty);
  float q=add;
  int lc=Integer.parseInt(pr);
  
  int discount =Integer.parseInt(discount1);
  
  int limit =Integer.parseInt(limit1);
  
  
  float bill=lc+q;
  float pay=0;
  float disc=0;
  if(bill>=limit)
  {

       disc =((bill*discount)/100);


      pay=bill-disc;
 
  }
     
  %>
 
 <%
 try{
 //job_no,part,labour,discount,date,limit
 String jobno=request.getParameter("job_no");
 //int jobno=Integer.parseInt(job_no1);
 
 //String part1=request.getParameter("add");
 //int partvalue=Integer.parseInt(part1);
 float partvalue=add;
 String lab=request.getParameter("labour");
 int labourcharge=Integer.parseInt(lab);
 
 String dis=request.getParameter("discount");
 int discountprice=Integer.parseInt(dis);
 
 
 //logic  for insert current date and time
 java.util.Date date2=new java.util.Date();

java.sql.Date date1 =new java.sql.Date(date2.getTime());
java.sql.Timestamp invoicetime=new java.sql.Timestamp(date2.getTime());

 
 //String date1=request.getParameter("date");
 
 
 
 String lim=request.getParameter("limit");
 int limitprice=Integer.parseInt(lim);

 //System.out.println(bill);
 //System.out.println(pay);

 Connection con=null;
 PreparedStatement pstmt=null;

String qry="insert into vehicle.invoice (jobno,partvalue,labourcharge,discountprice,date1,limitprice,bill,pay) values( ?,?,?,?,?,?,?,?) ";
Class.forName("com.mysql.jdbc.Driver");
//System.out.println("driver installed");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
//System.out.println("connection created");
pstmt=con.prepareStatement(qry);

pstmt.setString(1,jobno);
pstmt.setFloat(2,partvalue);
pstmt.setInt(3,labourcharge);
pstmt.setInt(4,discountprice);
pstmt.setDate(5,date1);
pstmt.setInt(6,limitprice);
pstmt.setFloat(7,bill);
pstmt.setFloat(8,pay);
int n= pstmt.executeUpdate();


 }
 
 catch(Exception e){e.printStackTrace();
	//out.print("sorry!please fill correct detail and try again" );
	}

 %>
 
  
  
  	            <%
String id1= request.getParameter("job_no");
//int job_no=Integer.parseInt(id1);
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
// SELECT taxes.document_type
//FROM notification, taxes
///WHERE notification.notification_id = ?
 /// AND notification.document_id = taxes.document_id
 
//String qry="select * from  vehicle.in, vehicle.db1   where  db1.job_no=? AND in.userid = db1.job_no";
String qry="select * from vehicle.db1 where job_no=?";
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=sambit");
pstmt=con.prepareStatement(qry);
pstmt.setString(1, id1);
rs=pstmt.executeQuery();
if(!rs.next()) {
	response.sendRedirect("invoice.jsp");
    out.println("Sorry, could not find that vehicle  . ");
} else {
	


%>
  <!-- PRINT STARTS HERE -->
    <div class="container">
  
      <div class="row">
        <div class="col-xs-6">
          <h3>
            <img src="images/category/logo.png" width="100" height="100">
            </a>
          </h3>
        </div>
        <div class="col-xs-6 text-right">
          <h3>INVOICE</h3>
          <h4><small>Invoice Date  <%= new java.util.Date() %></small></h4>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-5">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>From: <a href="#">Your Name</a></h4>
            </div>
            <div style="padding: 8px !important;" class="panel-body">
              <p>
               JAGANNATH MOTOR <br>
                Authorised Service Centre<br>
                Address:Nalco Square,
                  Semiliguda,Koraput
              </p>
            </div>
          </div>
        </div>
<% %>
        <div class="col-xs-5 col-xs-offset-2 text-right">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>To : <a href="#">Client Name</a></h4>
            </div>
            
            
            
  <div style="padding: 8px !important;" class="panel-body">
              <p>
                              <b>First Name:</b> <%= rs.getString(10) %> <br>
              
                <b> last Name: </b> <%= rs.getString(11) %> <br>
                
                
                    <b>Email_id: </b>  <%= rs.getString(12) %><br>
                
                                 <b>Mobile_no: </b> <%= rs.getString(16) %> <br>
                
               
              </p>
            </div>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
          </div>
        </div>
      </div>
      <!-- / end client details section -->
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>
              <h4>Service</h4>
            </th>
            <th>
              <h4>Description</h4>
            </th>
            <th>
              <h4>Hrs/Qty</h4>
            </th>
            <th>
              <h4>Rate/Price</h4>
            </th>
            <th>
              <h4>Sub Total</h4>
            </th>
          </tr>
          
          
        </thead>
        <tbody>
         
          <tr>
            <td>Amount Received from sale of parts:</td>
            <td><a href="#">Sales of parts</a></td>
            <td class="text-right">N/A</td>
            <td class="text-right"> <%=q%></td>
            <td class="text-right"> <%=q%></td>
          </tr>
          <tr>
            <td>labour charge:</td>
            <td><a href="#">Labour used</a></td>
            <td class="text-right">N/A</td>
            <td class="text-right"> <%=lc%></td>
            <td class="text-right"> <%=lc%></td>
          </tr>
        </tbody>
      </table>
      <div class="row text-right">
        <div class="col-xs-2 col-xs-offset-8">
          <p>
            <strong>
            Sub Total :<br>
            TAX :<br>
            Discount:<br>
            Total :<br>
            Total after Discount:<br>
           
            </strong>
          </p>
        </div>
        <div class="col-xs-2">
          <strong>
           <%=bill%> <br>
            N/A <br>
           <%=disc %><br><br>
          <%=bill%><br>
          <%=pay %><br>
           
          </strong>
        </div>
      </div>
       <div class="row">
        <div class="col-xs-6">
        
          <div class="panel panel-info">
            <div class="panel-heading">
              <h4>Contact Details</h4>
            </div>
            <div style="padding: 8px !important;" class="panel-body">
              Email : <br>jagannathmotor.semiliguda@gmail.com <br>
                  Mobile :9437138319 <br> <br>
                  Twitter : <a href="#">@vehicle</a><br>
                  
            </div>
          </div>
        </div>
        <div class="col-xs-6">
          <div class="span7">
            <div class="panel panel-info">
              <div class="panel-heading">
                <h4>Vehicle  Details</h4>
              </div>
              <div style="padding: 8px !important;" class="panel-body">
                <p>
                 <b> job_no:</b>  <%= rs.getString(2) %> <br>
                  <b> regdno:</b> <%= rs.getString(3) %><br>
                  <b> model :</b><%= rs.getString(4) %><br>
                  <b> mileage:</b><%=rs.getString(5) %><br>
                  </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <%
      }
     %>
     <br>
     <br>
     <!-- PRINT ENDS HERE -->
        <input type="button" value="Print" onclick="mynewevt(); window.print();" />
        <script>
        function mynewevt(){        	
        	document.getElementById("sideNav").classList.add('close');
        	document.getElementById("main-menu").style.display="none";
        }
        </script>
       
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






