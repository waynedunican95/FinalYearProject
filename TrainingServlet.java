package com.ibm.devworks.examples.java.lll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TrainingServlet
 */
@WebServlet("/TrainingServlet")
public class TrainingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

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
		PrintWriter out = response.getWriter();
        out.println("you got here");
        String username = request.getParameter("username");
        String date = request.getParameter("date");
        String team = request.getParameter("team");
        String duration = request.getParameter("duration");
        String focus = request.getParameter("focus");
        String thoughts = request.getParameter("thoughts");
        out.println("you got here2");
        try{
        		
        //loading drivers for mysql
        Class.forName("com.ibm.db2.jcc.DB2Driver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:db2://5.10.125.192:50000/SQLDB","user05939","4jVGEBVa0sjk");
          out.println("you got here3");
        PreparedStatement ps1=con.prepareStatement
                  ("insert into USER05939.TRAINING1 values(?,?,?,?,?,?)");
        out.println("you got here4");
        ps1.setString(1, username);
        ps1.setString(2, date);
        ps1.setString(3, team);
        ps1.setString(4, duration);
        ps1.setString(5, focus);
        ps1.setString(6, thoughts);
       ps1.executeUpdate();
       out.println("you got here5");
        
          
        con.close();
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	}

}
