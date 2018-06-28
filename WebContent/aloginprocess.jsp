<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>


<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle",
            "root", "sambit");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from vehicle.adminlogin where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", "plz sign in first");
        response.sendRedirect("home1.jsp");
        %>
        
        <% 
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
       // response.sendRedirect("success.jsp");
    } else {
    	request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail");
    	session.setAttribute("Loginmsg","plz sign in first");
  
 
%>
<jsp:forward page="test.jsp"></jsp:forward>

<%
    }
%>

