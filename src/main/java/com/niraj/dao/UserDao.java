package com.niraj.dao;
import java.util.*;
import java.sql.*;

import com.niraj.model.user;

public class UserDao {

	public static List<user> getAllist(){
		 List<user> list=new ArrayList<user>();
		try {
			

			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learn","root","qwerty123");
			String sql = "select * from  login_register";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				user u = new user();
				u.setId(rs.getInt("id"));
				u.setFname(rs.getString("fname"));
				u.setUname(rs.getString("uname"));
				u.setPassword(rs.getString("pass"));
				list.add(u);
				
				
			}
			
		

		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
		
		
	}
	
	
	
    public static void delete(int id){  
        int status=0;  
        try{  
        	Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learn","root","qwerty123"); 
			PreparedStatement ps=con.prepareStatement("delete from login_register where id=?"); 
			ps.setInt(1,id);  
            status=ps.executeUpdate();  
            status=ps.executeUpdate();  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
          
    }



	public static user update(int id) {
		 List<user> list=new ArrayList<user>();
		 user u =null;
		 u = new user();

		try{
        	Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learn","root","qwerty123"); 
			PreparedStatement ps=con.prepareStatement("select * from login_register where id=?"); 
			ps.setInt(1,id); 
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				u.setId(rs.getInt("id"));
				u.setFname(rs.getString("fname"));
				u.setUname(rs.getString("uname"));
				u.setPassword(rs.getString("pass"));
				
				
				
				
			}

		
		
	}catch(Exception e){e.printStackTrace();} 
		
		return u;


	}
	
	
	
	
	
	public static int update2(user u){  
        int status=0;  
        try{Class.forName("com.mysql.jdbc.Driver");  
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learn","root","qwerty123"); 
		PreparedStatement ps=con.prepareStatement("update login_register set fname=?,uname=?,pass=? where id=?");    
			ps.setString(1,u.getFname());  
            ps.setString(2,u.getUname());  
            ps.setString(3,u.getPassword());
            ps.setInt(4,u.getId());
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
	
}
