package org.jsp.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Invoice 
{
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException  {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String qry=" insert into  vehicle.db1(job_no) values(?)";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=sambit");
		pstmt=con.prepareStatement(qry);
		//pstmt.setInt(1,id);
		//rs=pstmt.executeQuery();
		if(rs.next())
		{
//			String name=rs.getString(1);
//			int fee=rs.getInt(3);
//			System.out.println(name);
//			System.out.println(fee);
			
		}
		
	}
}
