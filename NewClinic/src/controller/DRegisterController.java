package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DPDaoImplementation;
import dao.DPdao;
import model.Dlogin;
import model.Plogin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
@WebServlet("/DRegisterController")
public class DRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DPdao lo;
  
    public DRegisterController() {
       lo=new DPDaoImplementation();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	Dlogin d = new Dlogin();
		d.setDName( request.getParameter( "dname" ) );
        d.setDEmail( request.getParameter( "demail" ) );
        d.setDPassword( request.getParameter( "dpassword" ) );
        
        d.setDspeciality( request.getParameter("speciality"));
        d.setDGender( request.getParameter( "dgender" ) );
        d.setDCity( request.getParameter( "dcity" ) );
        d.setDAddress( request.getParameter( "daddress" ));
        System.out.println(request.getAttribute("speciality"));
        
        Enumeration params = request.getParameterNames(); 
        while(params.hasMoreElements()){
         String paramName = (String)params.nextElement();
         System.out.println("Attribute Name - "+paramName+", Value - "+request.getParameter(paramName));
        }
        lo.addDoctor(d);
       response.sendRedirect("index.html#dlogin");
		
	
	}

}
