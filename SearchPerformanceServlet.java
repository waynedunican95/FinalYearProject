package com.ibm.devworks.examples.java.lll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchPerformanceServlet
 */
@WebServlet("/SearchPerformanceServlet")
public class SearchPerformanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPerformanceServlet() {
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
		PrintWriter out = response.getWriter();
		String username1 = request.getParameter("username");
	    try {
		    out.println("<!DOCTYPE html>");
		    out.println("<html><head>");
		    out.println("<meta charset=" + "utf-8>");
		    out.println("<meta http-equiv='X-UA-Compatible' content='IE=edge'>");
		    out.println("<meta name='viewport' content='width=device-width, initial-scale=1'>");
		    out.println("<meta name='description' content=''>");
		    out.println("<link rel='icon' href='images/gaa.ico' type='image/x-icon'>");
		    out.println("<title>GAA Player Training and Nutrition</title>");
		    out.println("<link href='css/bootstrap.min.css' rel='stylesheet'>");
		    out.println("<link href='css/modern-business.css' rel='stylesheet'>");
		    out.println("<link href='font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'></head>");
		    out.println("<body>");
		    out.println("<nav class='navbar navbar-default navbar-fixed-top' role='navigation'>");
		    out.println("<div class='container'>");
		    out.println("<div class='navbar-header'>");
		    out.println("<button type='button' class='navbar-toggle' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1'>");
		    out.println("<span class='sr-only'>Toggle navigation</span>");
		    out.println("<span class='icon-bar'></span>");
		    out.println("<span class='icon-bar'></span>");
		    out.println("<span class='icon-bar'></span></button>");
		    out.println("<a class='navbar-brand' href='home.jsp' ><img src='images/gaa.png' width='35' style='float:left; padding-right:10px;'></img> Player Training and Nutrition</a></div></div></nav>");
		    out.println("<div class='container'><div class='row'>");
		    out.println("<div class='col-lg-12'><h2 class='page-header'>Manager Console</h2></div>");
		    out.println("<div class='col-md-12'><div class='panel panel-default text-center'><div class='panel-body'><center><img class='img-responsive img-hover img-related' src='images/SINIannounceDartfishPartnership2.jpg' width='40%'><center></div><div class='panel-body'>");
		    out.println("<center><table class='table table-inverse' width='30%' height='30%'><tr><th>Username</th><th>Date</th><th>Exercise</th><th>Sets</th><th>Reps</th><th>Thoughts</th></tr>");
		    
		    Class.forName("com.ibm.db2.jcc.DB2Driver");

			//creating connection with the database 
			Connection  con=DriverManager.getConnection
						 ("jdbc:db2://5.10.125.192:50000/SQLDB","user05939","4jVGEBVa0sjk");
			PreparedStatement ps=con.prepareStatement
	                  ("select *  from USER05939.PERFORMANCE where USERNAME=?");

	        ps.setString(1, username1);
	        
	        ResultSet rs= ps.executeQuery();
			  while(rs.next())
			  {
				  String username=rs.getString("USERNAME");
				  String date=rs.getString("DATE");
				  String exercise=rs.getString("EXERCISE");
				  String sets=rs.getString("SETS");
				  String reps=rs.getString("REPS");
				  String thoughts=rs.getString("THOUGHTS");
				  
				  out.println("<tr>");
				  out.println("<td><font color='black'>"+username+"</font></td>");
				  
				  out.println("<td><font color='black'>"+date+"</font></td>");

				  out.println("<td><font color='black'>"+exercise+"</font></td>");

				  out.println("<td><font color='black'>"+sets+"</font></td>");

				  out.println("<td><font color='black'>"+reps+"</font></td>");

				  out.println("<td><font color='black'>"+thoughts+"</font></td>");

				  out.println("</tr>");
			  }
		    
		    out.println("</table></center></div></div></div></div>");
		    out.println("</div><script src='js/jquery.js'></script><script src='js/bootstrap.min.js'></script>");
		    out.println("</body>");
		    out.println("</html>");
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	}

}
