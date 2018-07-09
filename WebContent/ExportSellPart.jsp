<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*"%>
<html>
<body>
<% 
File file  = new File("sellpart.csv");  
file.createNewFile(); 

String filename = "f:\\csv\\sellpart.csv";
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
fw.append("part");
fw.append(',');
fw.append("price");
fw.append(',');
fw.append("Quantity");
fw.append(',');
fw.append("Job_No");
fw.append(',');
fw.append("date of sell");

fw.append('\n');
Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url+dbName,userName,password);
String query = "select * from vehicle.parthistory";
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
out.println("<h1>Successfully Created Csv file.check your Document folder.click back to come home page</h1>");
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>