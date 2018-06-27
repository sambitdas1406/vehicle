<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.io.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%

/* Create Connection objects */

Class.forName ("com.mysql.jdbc.Driver"); 
//System.out.println("Driver installed");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root", "sambit");
Statement stmt = conn.createStatement();
/* Define the SQL query */
ResultSet rs = stmt.executeQuery("SELECT * FROM vehicle.salary");
/* Step-2: Initialize PDF documents - logical objects */
Document my_pdf_report = new Document();
PdfWriter.getInstance(my_pdf_report, new FileOutputStream("F:/salaryreport.pdf"));
my_pdf_report.open();            
//we have four columns in our table
PdfPTable my_report_table = new PdfPTable(4);
//create a cell object
PdfPCell table_cell;

while (rs.next()) {                
	String eid = rs.getString("eid");
	table_cell=new PdfPCell(new Phrase(eid));
	my_report_table.addCell(table_cell);

	String month = rs.getString("month");
	table_cell=new PdfPCell(new Phrase(month));
	my_report_table.addCell(table_cell);

	String year = rs.getString("year");
	table_cell=new PdfPCell(new Phrase(year));
	my_report_table.addCell(table_cell);


	String salary = rs.getString("salary");
	//float salary=Float.parseFloat(salary1);
	table_cell=new PdfPCell(new Phrase(salary));
	my_report_table.addCell(table_cell);

	/* Attach report table to PDF */
	my_pdf_report.add(my_report_table);                       
	//my_pdf_report.close();

                }
/* Attach report table to PDF */
my_pdf_report.add(my_report_table);                       
my_pdf_report.close();

/* Close all DB related objects */
rs.close();
stmt.close(); 
conn.close();    

%>


</body>
</html>