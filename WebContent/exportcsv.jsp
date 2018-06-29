<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*"%>
<html>
<body>
<% 
File file  = new File("f:\\salary.csv");  
file.createNewFile();  

String filename = "f:\\csv\\salary.csv";
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "vehicle";
String driver = "com.mysql.jdbc.Driver";
String userName = "root"; 
String password = "sambit";
Statement stmt;
try
{
FileWriter fw = new FileWriter(file);
fw.append("EmpId");
fw.append(',');
fw.append("Month");
fw.append(',');
fw.append("Year");
fw.append(',');
fw.append("Salary");
fw.append('\n');
Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url+dbName,userName,password);
String query = "select * from vehicle.salary";
stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(query);
while(rs.next())
{
fw.append(rs.getString(2));
fw.append(',');
fw.append(rs.getString(3));
fw.append(',');
fw.append(rs.getString(4));
fw.append(',');
fw.append(rs.getString(5));
fw.append('\n');
}
fw.flush();
fw.close();
conn.close();
out.println("Successfully Created Csv file.click back to come home page");
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>