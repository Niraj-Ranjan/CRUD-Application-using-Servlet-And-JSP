package com.login.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Uservalidation {

	public static boolean validateUser(String user, String password) {
		boolean status=false;
		
		
		
		try {

			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learn","root","qwerty123");
			String sql = "select * from  login_register where uname = ? and pass = ?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			status = rs.next();

		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return status;
	}

}
