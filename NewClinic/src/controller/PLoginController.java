package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.UserUtil;
@WebServlet("/PLoginController")

public class PLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
    String pemail;
    String ppass;
    Statement stmt;
    ResultSet rs;
    RequestDispatcher dispatch;
    
    public PLoginController(){
		con= UserUtil.getConnection();
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		pemail=request.getParameter("pemail");        
		ppass=request.getParameter("ppassword");
		ServletContext context = getServletContext();
		
		System.out.println(pemail + ppass);
		
			
		try {
			 String sql="SELECT * FROM preg where pemail='"+pemail+"'and ppassword='"+ppass+"'";
			 PreparedStatement prep=con.prepareStatement(sql);
			 rs = prep.executeQuery(sql);
		    if(rs.next()){
		    	context.setAttribute("myemail",request.getParameter("pemail"));
		      dispatch=request.getRequestDispatcher("phome.jsp");
			dispatch.forward(request,response);
		}
		else{
		 	dispatch=request.getRequestDispatcher("error.jsp");
			dispatch.forward(request,response);
	 }
	    }catch (SQLException e) {
		e.printStackTrace();
	}	
	}

}
