package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;

import controller.Dsearch;
import util.UserUtil;
import model.Dlogin;
import model.Dquery;
import model.Dreservation;
import model.Plogin;


public class DPDaoImplementation implements DPdao {

	private Connection conn;
	
	public  Dlogin dl;
    public DPDaoImplementation() {
        conn = UserUtil.getConnection();
    }
    
    public String checkDocter(String user, String pass){
    dl = new Dlogin();
    	try {
            String query = "select * from doctor_table where demail= ? and dpassword = ?";
            PreparedStatement preparedStatement = conn.prepareStatement( query );
            preparedStatement.setString(1, user);
            preparedStatement.setString(2, pass);
            System.out.println(user + pass);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
				dl.setDEmail(rs.getString("demail"));
				dl.setDName(rs.getString("dname"));
				//dl.setDspeciality(rs.getString("specialist"));
				//System.out.println("DS: "+rs.getString("specialist"));
				
				return "True";
			}
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	return "False";
    }
    
	public void addDoctor(Dlogin dlog) {
		 try {
	            String query = "insert into doctor_table(dname,demail,dpassword,specialist,dgender,dcity,daddress) values (?,?,?,?,?,?,?)";
	            PreparedStatement preparedStatement = conn.prepareStatement( query );
	            preparedStatement.setString( 1, dlog.getDName() );
	            preparedStatement.setString( 2, dlog.getDEmail() );
	            preparedStatement.setString( 3, dlog.getDPassword() );
	            preparedStatement.setString( 4, dlog.getDspeciality() );
	            preparedStatement.setString( 5, dlog.getDGender() );
	            preparedStatement.setString( 6, dlog.getDCity() );
	            preparedStatement.setString( 7, dlog.getDAddress() );
	            preparedStatement.executeUpdate();
	            preparedStatement.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
	}

	
	public void addPatient(Plogin plog) {
		 try {
	            String query = "insert into preg (pname,pemail,ppassword,pgender,pcontactno) values (?,?,?,?,?)";
	            PreparedStatement preparedStatement = conn.prepareStatement( query );
	            preparedStatement.setString( 1, plog.getPName() );
	            preparedStatement.setString( 2, plog.getPEmail() );
	            preparedStatement.setString( 3, plog.getPPassword() );
	            preparedStatement.setString( 4, plog.getPGender() );
	            preparedStatement.setString( 5, plog.getPContactno() );
	            preparedStatement.executeUpdate();
	            preparedStatement.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
		
	}
//	public boolean checkPLogin(String ){
//		
//	}
	
	public void addDquery(Dquery dq) {
		 try {
	            String query = "update doctor_table set demail=?,dname=?,daddress=?,sdate=?,edate=?,time=?"
	            		+ " where demail=?";
	            PreparedStatement preparedStatement = conn.prepareStatement( query );
	            preparedStatement.setString(1,dq.getDemail());
	            preparedStatement.setString(2,dq.getDname());
	            preparedStatement.setString( 3, dq.getClinicaddress() );
	            preparedStatement.setString( 4, dq.getSdate() );
	            preparedStatement.setString( 5, dq.getEdate() );
	            preparedStatement.setString( 6, dq.getTime() );
	            preparedStatement.setString( 7, dq.getDemail() );
	            preparedStatement.executeUpdate();
	            preparedStatement.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
		
	}
	public void addReser(Dreservation dreser) {
		 try {System.out.println("adding reservation");
	            String query = "insert into reservation(doctoremail,clinicaddress,patientname,patientemail,patientcontactno,date,doctorname,reservedtime) values (?,?,?,?,?,?,?,?)";
	            PreparedStatement preparedStatement = conn.prepareStatement( query );
	            preparedStatement.setString( 1, dreser.getDoctoremail() );
	            preparedStatement.setString( 2, dreser.getClinicaddress() );
	            preparedStatement.setString( 3, dreser.getPatientname() );
	            preparedStatement.setString( 4, dreser.getPatientemail() );
	            preparedStatement.setString( 5, dreser.getPatientcontactno() );
	            preparedStatement.setString( 6, dreser.getDate() );
	            preparedStatement.setString( 7, dreser.getDoctorname() );
	            preparedStatement.setString( 8, dreser.getTime() );
	            preparedStatement.executeUpdate();
	            System.out.println("updated");
	            preparedStatement.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
	}

	@Override
	public void deletereservation(String id) {
		 try {System.out.println("deleting reservation");
         String query = "delete from reservation where idreservation=?";
         PreparedStatement preparedStatement = conn.prepareStatement( query );
      int idd=  Integer.parseInt(id) ;
         preparedStatement.setInt(1, idd);
         preparedStatement.executeUpdate();
         preparedStatement.close();
     } catch (SQLException e) {
         e.printStackTrace();
     }
		
	}

	@Override
	public void sendcancelstate(String id) {
		 try {
	            String query = "update reservation set cancelstate=?"
	            		+ " where idreservation=?";
	            PreparedStatement preparedStatement = conn.prepareStatement( query );
	            preparedStatement.setString(1,"Cancelled");
	            preparedStatement.setInt(2,Integer.parseInt(id));
	            preparedStatement.executeUpdate();
	            preparedStatement.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
	}

	@Override
	public void sendapprovestate(String id) { try {
        String query = "update reservation set cancelstate=?"
        		+ " where idreservation=?";
        PreparedStatement preparedStatement = conn.prepareStatement( query );
        preparedStatement.setString(1,"Approved");
        preparedStatement.setInt(2,Integer.parseInt(id));
        preparedStatement.executeUpdate();
        preparedStatement.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

		// TODO Auto-generated method stub
		
	}


}
