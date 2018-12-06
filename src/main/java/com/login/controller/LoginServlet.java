package com.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niraj.model.user;



@WebServlet(urlPatterns="/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServerException, IOException, ServletException{
		
		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, res);
		
	}
	
protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServerException, IOException, ServletException{
	
	user u = new user();
	PrintWriter pr = res.getWriter();

	String username=req.getParameter("uname");
	String userpass=req.getParameter("upass");

	
	
	  if(Uservalidation.validateUser(username, userpass )){ 
		 
		  RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/registrationlist.jsp");  
	        rd.forward(req,res); 
	    }  
	    else{  
	        pr.print("Sorry username or password error");  
	        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/login.jsp"); 
	        rd.forward(req,res);
	    }  
		
	
	}

	

}
