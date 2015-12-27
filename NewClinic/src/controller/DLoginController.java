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
import javax.servlet.http.HttpSession;

import dao.DPDaoImplementation;
import model.Dlogin;
import util.UserUtil;
@WebServlet("/DLoginController")
public class DLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
    String demail;
    String dpass;
    Statement stmt;
    ResultSet rs;
    RequestDispatcher dispatch;
    public DLoginController(){
		con= UserUtil.getConnection();
		
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	
    	
    	demail=request.getParameter("demail");        
		dpass=request.getParameter("dpassword");
		ServletContext context = getServletContext();
		System.out.println(demail + dpass);
		DPDaoImplementation dao = new DPDaoImplementation();
		String dlogin;
		dlogin = dao.checkDocter(demail, dpass);
		if(dlogin=="False"){
			dispatch=request.getRequestDispatcher("error.jsp");
			dispatch.forward(request,response);
		}else{
		 	
			context.setAttribute("ddemail",request.getParameter("demail"));
			System.out.println("login success");
			//System.out.println("inside loginServ: "+Dlogin.getDsplist());
			
			System.out.println(dao.dl.getDspeciality());
			HttpSession session = request.getSession();
			session.setAttribute("Dlogin", dao.dl);
			//request.setAttribute("Dlogin", Dlogin);
			dispatch=request.getRequestDispatcher("dhome.jsp");
			dispatch.forward(request,response);
		}
		
		/*ServletContext context = getServletContext();
		context.setAttribute("ddemail",request.getParameter("demail"));
		System.out.println(demail);
		
			
		try {
			 String sql="SELECT * FROM dreg where demail='"+demail+"'and dpassword='"+dpass+"'";
			 PreparedStatement prep=con.prepareStatement(sql);
			 rs = prep.executeQuery(sql);
		    if(rs.next()){
		      dispatch=request.getRequestDispatcher("dhome.jsp");
			dispatch.forward(request,response);
		}
		else{
		 	dispatch=request.getRequestDispatcher("error.jsp");
			dispatch.forward(request,response);
	 }
	    }catch (SQLException e) {
		e.printStackTrace();
	}	*/
}
}