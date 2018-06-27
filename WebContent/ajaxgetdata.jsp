<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>  
  
<%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
out.print("Please enter partname");  
}else{  
//int id=Integer.parseInt(s);  
//out.print(id);  
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","sambit");  
PreparedStatement ps=con.prepareStatement("select * from vehicle.part where partname=?");  
ps.setString(1,s);  
ResultSet rs=ps.executeQuery();  
while(rs.next()){  
out.print(rs.getString(6)+"."+rs.getString(7));


}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  
