package com.ibm.devworks.examples.java.lll;



	import java.io.IOException;
	import java.io.PrintWriter;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.util.List;

	import javax.persistence.EntityManager;
	import javax.persistence.EntityManagerFactory;
	import javax.persistence.Persistence;
	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;



	/**
	 * Servlet implementation class RegisterServlet
	 */
	@WebServlet("/RegisterServlet")
	public class RegisterServlet extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        PrintWriter out = response.getWriter();
	        out.println("you got here");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String dob = request.getParameter("dob");
	        String position = request.getParameter("position");
	        try{
	        		
	        //loading drivers for mysql
	        Class.forName("com.ibm.db2.jcc.DB2Driver");

		//creating connection with the database 
	          Connection  con=DriverManager.getConnection
	                     ("jdbc:db2://5.10.125.192:50000/SQLDB","user05939","4jVGEBVa0sjk");

	        PreparedStatement ps=con.prepareStatement
	                  ("insert into USER05939.USER values(?,?,?,?,?,?,?)");

	        ps.setString(1, username);
	        ps.setString(2, password);
	        ps.setString(3, name);
	        ps.setString(4, email);
	        ps.setString(5, phone);
	        ps.setString(6, dob);
	        ps.setString(7, position);
	       ps.executeUpdate();
	       request.getRequestDispatcher("login.jsp").forward(request, response);
	          con.close();
	        
	        }
	        catch(Exception se)
	        {
	            se.printStackTrace();
	        }
		
	      }
		
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


}
