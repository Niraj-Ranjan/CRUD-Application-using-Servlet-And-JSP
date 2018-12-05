package com.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;
import java.sql.*;
import java.sql.PreparedStatement;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niraj.dao.UserDao;
import com.niraj.model.user;

@WebServlet("/ListServlet")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


		protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServerException, IOException, ServletException{
			PrintWriter out = res.getWriter();
			//UserDao d = new UserDao();
			//List<user> list=d.getAllist();
			//out.print(list);
			//req.setAttribute("listuser", list);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/registrationlist.jsp");
			rd.forward(req, res);	
		}
		
		protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServerException, IOException, ServletException{

		}
}
