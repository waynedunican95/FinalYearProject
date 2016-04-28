package com.ibm.devworks.examples.java.lll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ListProductServlet
 */
@WebServlet("/ListProductServlet")
public class DisplayServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
   ResultSet resultSet = null;
   /**
    * @see HttpServlet#HttpServlet()
    */
   public DisplayServlet() {
      super();
      // TODO Auto-generated constructor stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      //loading drivers for mysql
	   
   }

   
   protected void doPost(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
	   PrintWriter out = response.getWriter();

	   try{
   		
	        //loading drivers for mysql
	        Class.forName("com.ibm.db2.jcc.DB2Driver");
	
	        //creating connection with the database 
	        Connection  con=DriverManager.getConnection
	                     ("jdbc:db2://5.10.125.192:50000/SQLDB","user05939","4jVGEBVa0sjk");
	        out.println("you got here3");
	        
			PreparedStatement ps1=con.prepareStatement
	                  ("select * from USER05939.NUTRITION");
	        out.println("you got here4");
	       
	        resultSet = ps1.executeQuery();
	        out.println("you got here5");
	        
	        out.println("<html><body><h2>The Select query has following results : </h2>"); 
	        out.println("<hr></br><table cellspacing='0' cellpadding='5' border='1'>"); 
	        out.println("<tr>"); 
	        out.println("<td><b>Username</b></td>"); 
	        out.println("<td><b>Password</b></td>"); 
	        out.println("<td><b>Name</b></td>");
	        out.println("<td><b>Email</b></td>");
	        out.println("<td><b>Phone</b></td>");
	        out.println("<td><b>DOB</b></td>");
	        out.println("</tr>"); 
	        
	        while(resultSet.next()) { 
	        out.println("<tr>");
	        out.println("<td>"+resultSet.getString(1) + "</td>");
	        out.println("<td>"+resultSet.getString(2) + "</td>"); 
	        out.println("<td>"+resultSet.getString(3) + "</td>");
	        out.println("<td>"+resultSet.getString(4) + "</td>"); 
	        out.println("<td>"+resultSet.getString(5) + "</td>"); 
	        out.println("<td>"+resultSet.getString(6) + "</td>"); 
	        out.println("<td>"+resultSet.getString(7) + "</td>"); 
	        out.println("</tr>"); } 
	        out.println("</table></br><hr></body></html>"); 
	        con.close();
			
			request.getRequestDispatcher("members_console.jsp").forward(request, response);
       }
       catch(Exception se)
       {
           se.printStackTrace();
       }
   }

}
