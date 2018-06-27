package org.invoice.vehicleApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class InvoiceDAO
{
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle", "root", "sambit");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(Invoice u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into vehicle.invoice(job_no,idprice,labourprice,discount,total,date) values(?,?,?,?,?,?)");
		// job_no,date,idprice , labourprice ,discount,total

		    
		    
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	
}
