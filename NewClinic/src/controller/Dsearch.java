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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DPDaoImplementation;
import dao.DPdao;
import model.Dlogin;
import model.Dreservation;
import util.UserUtil;

public class Dsearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	String sl;
	Statement stmt;
	ResultSet rs;
	private DPdao lo;

	RequestDispatcher dispatch;

	public Dsearch() {
		con = UserUtil.getConnection();

		lo = new DPDaoImplementation();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action=request.getParameter("action");
		 if (action.equalsIgnoreCase("delete")) {
			String id=request.getParameter("id");
			lo.deletereservation(id);
			  dispatch = request.getRequestDispatcher("phome.jsp");
			   dispatch.forward(request,response);
			
		}else  if (action.equalsIgnoreCase("cancel")) {
			String id=request.getParameter("id");
			lo.sendcancelstate(id);
			  dispatch = request.getRequestDispatcher("dmboard.jsp");
			   dispatch.forward(request,response);
			
		}else  if (action.equalsIgnoreCase("approve")) {
			String id=request.getParameter("id");
			lo.sendapprovestate(id);
			  dispatch = request.getRequestDispatcher("dmboard.jsp");
			   dispatch.forward(request,response);
		}
		
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println(action);
		if (action.equalsIgnoreCase("search")) {
			String Dtype=request.getParameter("speciality");
			String city=request.getParameter("city");
			System.out.println(city);
			System.out.println(Dtype);
			request.setAttribute("ss", Dtype);
			request.setAttribute("cty", city);
			System.out.println(request.getAttribute("ss"));

		  dispatch = request.getRequestDispatcher("rsearch.jsp");
		   dispatch.forward(request,response);


		}else if (action.equalsIgnoreCase("reserv")) {
			String pname, pcontact, pemail, date, demail, clinicaddress, dname;
			pname = request.getParameter("pname");
			dname = request.getParameter("dname");
			pcontact = request.getParameter("pcontact");
			pemail = request.getParameter("pemail");
			date = request.getParameter("date");
			String time=request.getParameter("time");
			demail = request.getParameter("demail");
			System.out.println(pname+ " "+dname+ " "+pcontact+ " "+pemail+ " "+date+ " "+demail);
			Dreservation dr = new Dreservation();
			dr.setDoctoremail(demail);
			dr.setDoctorname(dname);
			dr.setClinicaddress(request.getParameter("clinicaddress"));
			dr.setDoctoremail(demail);
			dr.setPatientname(pname);
			dr.setPatientemail(pemail);
			dr.setTime(time);
			dr.setPatientcontactno(pcontact);
			dr.setDate(date);
			System.out.println(dr.getClinicaddress()+ dr.getDoctoremail());
			lo.addReser(dr);
			System.out.println("reservation ");
			response.sendRedirect("phome.jsp");
		} else {
			System.out.println("No kase envoked");
		}
		
	}

}
