package com.login.controller;

import java.io.IOException;
import java.rmi.ServerException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServerException, IOException, ServletException{
			
			req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, res);
			
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname=request.getParameter("fname");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		try {
			String sql = "insert into login_register(fname, uname,pass) values (?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learn","root","qwerty123");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, uname);
			ps.setString(3, pass);
			
			ps.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/registrationlist.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		doGet(request, response);
	}

}
