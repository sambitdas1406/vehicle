package org.jsp.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;



public class UserDao

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

	public static int save(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into vehicle.db1(job_no,regd_no,model,mileage,chassis_no,engine_no,mdate,sdate,   firstname,lastname,emailid,nature,gender,address,mobile_no,pincode) values(?,?,?,?,?,?,? ,?,?,?,?,?,?,?,?,?)");
			//job_no,regd_no,mdate, sdate ,model,mileage,chassis_no,engine_no,firstname,
			//lastname,mobile_no,gender,emailid,address,pincode,adhar
			
			ps.setInt(1, u.getJob_no());
			ps.setString(2, u.getRegd_no());
			ps.setString(3, u.getModel());
			ps.setDouble(4, u.getMileage());
			ps.setString(5, u.getChassis_no());
			ps.setString(6, u.getEngine_no());
		    ps.setString(7, u.getMdate());
		    ps.setString(8, u.getSdate());

           
		    ps.setString(9, u.getFirstname());
		    ps.setString(10, u.getLastname());
		    ps.setString(11, u.getEmailid());
		    ps.setString(12, u.getNature());
		    ps.setString(13, u.getGender());
		    ps.setString(14, u.getAddress());
		    ps.setLong(15, u.getMobile_no());
		    ps.setInt(16, u.getPincode());

		    
		    
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	/**
	 * Fetch records
	 * 
	 * @param startIndex
	 * @param recordCount
	 * @param token
	 * @return List<User>
	 */
	public static List<User> getIndexedRecords(int startIndex, int recordCount) {
		List<User> list = new ArrayList<User>();
		StringBuilder qParam = new StringBuilder("select * from  vehicle.db1 limit ");
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement(qParam.append((startIndex - 1)).append(",").append(recordCount).toString());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setJob_id(rs.getInt("job_id"));

				u.setJob_no(rs.getInt("job_no"));
				u.setRegd_no(rs.getString("regd_no"));
				u.setModel(rs.getString("model"));
				u.setMileage(rs.getDouble("mileage"));
				u.setChassis_no(rs.getString("chassis_no"));
				u.setEngine_no(rs.getString("engine_no"));
				u.setMdate(rs.getString("mdate"));

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	/**
	 * Fetch All records
	 * 
	 * @return Integer
	 */
	public static Integer getAllRecords() {
		Integer recordCount = 0;
		StringBuilder qParam = new StringBuilder("select count(*) as count from  vehicle.db1");
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement(qParam.toString());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				recordCount = rs.getInt("count");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return recordCount;
	}

	/**
	 * 
	 * @param job_id
	 * @return
	 */
	public static User getRecordById(int job_id) {
		User u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from vehicle.db1 where Job_id=?");
			ps.setInt(1, job_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setJob_id(rs.getInt("job_id"));
				u.setJob_no(rs.getInt("job_no"));
				u.setRegd_no(rs.getString("regd_no"));
				u.setModel(rs.getString("model"));
				u.setMileage(rs.getDouble("mileage"));
				u.setChassis_no(rs.getString("chassis_no"));
				u.setEngine_no(rs.getString("engine_no"));
				u.setMdate(rs.getString("mdate"));
              /*
               * job_id; job_no; regd_no;date; model; mileage; chassis_no,engine_no
               */
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}


	
	
	
	public static int update(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					//job_id; job_no; regd_no;date; model; mileage; chassis_no,engine_no
					//"update vehicle.db1 set job_no=?, regd_no=?,model=?,mileage=?,chassis_no=?,engine_no=?,mdate=?,sdate=?, firstname=?,lastname=?,emailid=?,nature=?,gender=?,address=?,mobile_no=?,pincode=? where job_id = ?");
		"update vehicle.db1 set  regd_no=?,model=?,mileage=?,chassis_no=?,engine_no=?,mdate=?,sdate=? where job_id = ?");

			//ps.setInt(1, u.getJob_no());

			ps.setString(1, u.getRegd_no());
			ps.setString(2, u.getModel());
			ps.setDouble(3, u.getMileage());
			ps.setString(4, u.getChassis_no());
			ps.setString(5, u.getEngine_no());
		    ps.setString(6, u.getMdate());
		    ps.setString(7, u.getSdate());
            ps.setInt(8, u.getJob_id());
           
		    //ps.setString(9, u.getFirstname());
		 //   ps.setString(10, u.getLastname());
		  //  ps.setString(11, u.getEmailid());
		  //  ps.setString(12, u.getNature());
		   // ps.setString(13, u.getGender());
		  //  ps.setString(14, u.getAddress());
		  //  ps.setLong(15, u.getMobile_no());
		  //  ps.setInt(16, u.getPincode());
		    
		   //  ps.setInt(17,u.getJob_id());
 
			
			
		  //  ps.setInt(8, u.getJob_id());
			 /*
             * job_id; job_no; regd_no;date; model; mileage; chassis_no,engine_no
             */
		    
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete  from vehicle.db1 where job_id=?");
			ps.setInt(1, u.getJob_id());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static User date() {
		User u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from vehicle.db1 where DATE = CURDATE()");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setJob_no(rs.getInt("job_no"));
				u.setRegd_no(rs.getString("regd_no"));
				u.setModel(rs.getString("model"));
				u.setMileage(rs.getDouble("mileage"));
				u.setChassis_no(rs.getString("chassis_no"));
				u.setEngine_no(rs.getString("engine_no"));
				u.setMdate(rs.getString("mdate"));
				 /*
	             * job_id; job_no; regd_no;date; model; mileage; chassis_no,engine_no
	             */
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}

}
