package com.ibm.devworks.examples.java.lll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchTrainingServlet
 */
@WebServlet("/SearchNutritionServlet")
public class SearchNutritionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchNutritionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		    out.println("<div class='col-md-12'><div class='panel panel-default text-center'><div class='panel-body'><center><img class='img-responsive img-hover img-related' src='images/Avonmore.png' width='40%'></center></div><div class='panel-body'>");
		    out.println("<center><table class='table table-inverse' width='30%' height='30%'><tr><th>Username</th><th>Calories</th><th>Supplementation</th><th>Breakfast</th><th>Lunch</th><th>Dinner</th><th>Snack</th></tr>");
		    
		    Class.forName("com.ibm.db2.jcc.DB2Driver");

			//creating connection with the database 
			Connection  con=DriverManager.getConnection
						 ("jdbc:db2://5.10.125.192:50000/SQLDB","user05939","4jVGEBVa0sjk");
			PreparedStatement ps=con.prepareStatement
	                  ("select *  from USER05939.NUTRITION where USERNAME=?");

	        ps.setString(1, username1);
	        
	        ResultSet rs= ps.executeQuery();
			  while(rs.next())
			  {
				  String username=rs.getString("USERNAME");
				  String calories=rs.getString("CALORIES");
				  String supplementation=rs.getString("SUPPLEMENTATION");
				  String breakfast=rs.getString("BREAKFAST");
				  String lunch=rs.getString("LUNCH");
				  String dinner=rs.getString("DINNER");
				  String snack=rs.getString("SNACK");
				  
				  out.println("<tr>");
				  out.println("<td><font color='black'>"+username+"</font></td>");
				  
				  out.println("<td><font color='black'>"+calories+"</font></td>");

				  out.println("<td><font color='black'>"+supplementation+"</font></td>");

				  out.println("<td><font color='black'>"+breakfast+"</font></td>");

				  out.println("<td><font color='black'>"+lunch+"</font></td>");

				  out.println("<td><font color='black'>"+dinner+"</font></td>");

				  out.println("<td><font color='black'>"+snack+"</font></td>");
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
