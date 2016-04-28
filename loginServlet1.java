package com.ibm.devworks.examples.java.lll;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginServlet1
 */
@WebServlet("/loginServlet1")
public class loginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet resultSet;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");
		try{
 		
	        //loading drivers for mysql
	        Class.forName("com.ibm.db2.jcc.DB2Driver");
	
	        //creating connection with the database 
	        Connection  con=DriverManager.getConnection
	                     ("jdbc:db2://5.10.125.192:50000/SQLDB","user05939","4jVGEBVa0sjk");
	       
	        
			PreparedStatement ps1=con.prepareStatement
	                  ("select * from USER05939.USER where USERNAME= ? AND PASSWORD= ?");
			 ps1.setString(1, username);
		        ps1.setString(2, password);
		       
	       resultSet= ps1.executeQuery();
	        
	       if (resultSet.next()) {
	    	    if (resultSet.getString("password").equals(password)){
	    	    	 HttpSession session = request.getSession();
	    	         session.setAttribute("username", username);
	    	         request.getRequestDispatcher("manager_console2.jsp").forward(request, response);
	    	        
	    	        con.close();
	    	    } else {
	    	    	 request.getRequestDispatcher("login.jsp").forward(request, response);
	    	    }
	    	} else {
	    		 request.getRequestDispatcher("login.jsp").forward(request, response);
	    	}
	        
			
			
     }
     catch(Exception se)
     {
         se.printStackTrace();
     }
	}

}
