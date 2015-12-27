package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DPDaoImplementation;
import dao.DPdao;
import model.Plogin;


public class PRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DPdao lo;
	  
    public PRegisterController() {
       lo=new DPDaoImplementation();
    }
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	      Plogin p = new Plogin();
	       p.setPName( request.getParameter( "pname" ) );
	       p.setPEmail( request.getParameter( "pemail" ) );
	       p.setPPassword( request.getParameter( "ppassword" ) );
	       p.setPGender( request.getParameter( "pgender" ) );
	       p.setPContactno( request.getParameter( "pcontactno" ) );
	       
	      lo.addPatient(p);
	      System.out.println("patient registration");
	      response.sendRedirect("index.html#plogin");
	}

}
