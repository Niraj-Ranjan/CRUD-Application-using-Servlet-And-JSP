package com.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niraj.dao.UserDao;
import com.niraj.model.user;

/**
 * Servlet implementation class UpdateServlate
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		String id=request.getParameter("uid");
		int uid = Integer.parseInt(id);
		String name=request.getParameter("fname");  
        String uname=request.getParameter("uname");  
        String pass=request.getParameter("pass");
        
        user u = new user();
        u.setId(uid);
        u.setFname(name);
        u.setUname(uname);
        u.setPassword(pass);
        
        int s = UserDao.update2(u);
        
        if(s>0){  
            response.sendRedirect("ListServlet");  
        }else{  
            out.println("Sorry! unable to update record");  
        }  
          
        out.close();  

        
		
   
		
		
		
	}

	

}
