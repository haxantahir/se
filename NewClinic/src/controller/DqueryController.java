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
import model.Dlogin;
import model.Dquery;
import dao.DPDaoImplementation;
import dao.DPdao;

@WebServlet("/DqueryController")
public class DqueryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DPdao qqq;

	public DqueryController() {
		qqq = new DPDaoImplementation();

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Dquery qq = new Dquery();
		ServletContext application = getServletContext();
		String email = application.getAttribute("ddemail").toString();
		qq.setDemail(request.getParameter("demail"));
		qq.setDname(request.getParameter("dname"));
		System.out.println(request.getParameter("demail"));
		qq.setClinicaddress(request.getParameter("clinicaddress"));
		qq.setSdate(request.getParameter("sdate"));
		qq.setEdate(request.getParameter("edate"));
		qq.setTime(request.getParameter("time"));
		//qq.setSpecialist(request.getParameter("Dsplist"));

		System.out.println("DqueryController");
		qqq.addDquery(qq);
		
		RequestDispatcher dis = request.getRequestDispatcher("dhome.jsp");
		dis.forward(request, response);

	}
}
