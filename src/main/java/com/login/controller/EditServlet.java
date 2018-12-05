package com.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niraj.dao.UserDao;
import com.niraj.model.user;


@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sid=request.getParameter("id");  
		int id=Integer.parseInt(sid);
		request.setAttribute("id",id);
		
		//UserDao d = new UserDao();
		//List <user> listu = d.update(id);
		//request.setAttribute("listu",listu);
		
		//PrintWriter out = response.getWriter();
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/edit.jsp");
		rd.forward(request, response);


		
	}

	

}
