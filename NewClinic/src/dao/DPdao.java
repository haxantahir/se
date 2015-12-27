package dao;

import model.Dlogin;
import model.Dquery;
import model.Dreservation;
import model.Plogin;

public interface DPdao {
	public void addDoctor(Dlogin dlog );
	public void addPatient(Plogin plog);
	public void addDquery(Dquery dq);
	//public void addAvailability();
	//public void searchdoc(search ds);
	public void addReser(Dreservation dr);
	public void deletereservation(String id);
	public void sendcancelstate(String id);
	public void sendapprovestate(String id);
}
