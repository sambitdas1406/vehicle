<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*"%>
<html>
<body>
<% 
String filename = "f:\\csv\\bill.csv";
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "vehicle";
String driver = "com.mysql.jdbc.Driver";
String userName = "root"; 
String password = "sambit";
Statement stmt;
try
{
FileWriter fw = new FileWriter(filename);
fw.append("Job_No");
fw.append(',');
fw.append("Part Value");
fw.append(',');
fw.append("Labour charge");
fw.append(',');
fw.append("Discount Price");
fw.append(',');
fw.append("date");
fw.append(',');
fw.append("limit price");
fw.append(',');
fw.append("bill ");
fw.append(',');
fw.append("pay ");
fw.append('\n');
Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url+dbName,userName,password);
String query = "select * from vehicle.invoice";
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
fw.append(',');
fw.append(rs.getString(6));
fw.append(',');
fw.append(rs.getString(7));
fw.append(',');
fw.append(rs.getString(8));
fw.append(',');
fw.append(rs.getString(9));
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