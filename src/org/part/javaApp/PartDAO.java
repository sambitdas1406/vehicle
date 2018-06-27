package org.part.javaApp;

import java.sql.*;

import java.util.*;
public class PartDAO
{
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","sambit");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Part u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into vehicle.part(partname,partdesc,brandname,branddesc,count,price,udate) values(?,?,?,?,?,?,?)");  
	        ps.setString(1,u.getPartname());  
	        ps.setString(2,u.getPartdesc());  
	        ps.setString(3,u.getBrandname());  
	        ps.setString(4,u.getBranddesc());  
	        ps.setInt(5, u.getCount());
	        ps.setDouble(6,u.getPrice());  
	        // ps.setDate(7,(java.sql.Date) u.getUdate());  
            //         statement.setDate(7, new java.sql.Date(p.getDate().getTime()));
           // ps.setDate(7,new java.sql.Date(u.getUdate().getTime()));
	        ps.setString(7, u.getUdate());
	        // ps.setInt(8, u.getId());

	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Part u){  
	    int status=0;  
	    try{  

	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update vehicle.part set partname=?,partdesc=?,brandname=?,branddesc=?,count=? ,price =?,udate= ? where id=?");  
	        ps.setString(1,u.getPartname());  
	        ps.setString(2,u.getPartdesc());  
	        ps.setString(3,u.getBrandname());  
	        ps.setString(4,u.getBranddesc());  
	        ps.setInt(5, u.getCount());
	        ps.setDouble(6,u.getPrice()); 
	        ps.setString(7, u.getUdate());

	        // preparedStatement.setDate(3, new java.sql.Date(user.getDob().getTime()));
            
          //  ps.setDate(7,new java.sql.Date(u.getUdate().getTime()));
	        ps.setInt(8,u.getId());  

	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Part u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from vehicle.part where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Part> getAllRecords(int start,int total){  
	    List<Part> list=new ArrayList<Part>();  
	    //  id;partname;partdesc; brandname; branddesc;count; price; udate;

	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from vehicle.part limit "+(start-1)+","+total);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Part u=new Part();  
	            u.setId(rs.getInt("id"));  
	            u.setPartname(rs.getString("partname"));  
	            u.setPartdesc(rs.getString("partdesc"));  
	            u.setBrandname(rs.getString("brandname"));  
	            u.setBranddesc(rs.getString("branddesc"));  
	            u.setCount(rs.getInt("count"));
	            u.setPrice(rs.getDouble("price"));
	            u.setUdate(rs.getString("udate"));
               

	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static List<Part> getAllRecord(){  
	    List<Part> list=new ArrayList<Part>();  
	
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from vehicle.part ");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Part u=new Part();  
	            u.setId(rs.getInt("id"));  
	            u.setPartname(rs.getString("partname"));  
	            u.setPartdesc(rs.getString("partdesc"));  
	            u.setBrandname(rs.getString("brandname"));  
	            u.setBranddesc(rs.getString("branddesc"));  
	            u.setCount(rs.getInt("count"));
	            u.setPrice(rs.getDouble("price"));
	            u.setUdate(rs.getString("udate"));
               

	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	
	
	
	public static Part getRecordById(int id){  
	    Part u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from vehicle.part where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Part();  
	            u.setId(rs.getInt("id"));  
	            u.setPartname(rs.getString("partname"));  
	            u.setPartdesc(rs.getString("partdesc"));  
	            u.setBrandname(rs.getString("brandname"));  
	            u.setBranddesc(rs.getString("branddesc"));  
	            u.setCount(rs.getInt("count"));
	            u.setPrice(rs.getDouble("price"));
	            u.setUdate(rs.getString("udate"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}
