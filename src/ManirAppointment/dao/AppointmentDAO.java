package ManirAppointment.dao;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.security.*;
import ManirAppointment.model.Appointment;
import db.connection.ConnectionManager;

public class AppointmentDAO {
	
	static Connection currentCon = null;
	static ResultSet rs = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	int app_id, staff_id, queuNum, appSlot_id;
	String pat_icnum, app_type, app_date, app_status, app_desc, pat_icNum;
	
	
	
	//CREATE APPOINTMENT
    public void addAppointment(Appointment bean) throws NoSuchAlgorithmException{
        app_date = bean.getApp_date();
        app_type = bean.getApp_type();
        app_status = bean.getApp_status();
        app_desc = bean.getApp_desc();
        staff_id = bean.getStaff_id();
        pat_icnum = bean.getPat_icNum();

        try {
            currentCon = ConnectionManager.getConnection();
            ps = currentCon.prepareStatement(
                    "INSERT INTO appointment (app_date, app_type, app_status, app_desc, queuNum, appSlot_id, pat_icnum, staff_id) VALUES (?,?,?,?,?,?,?,?)");
            ps.setString(1, app_date);
            ps.setString(2, app_type);
            ps.setString(3, app_status);
            ps.setString(4, app_desc);
            ps.setInt(5, queuNum);
            ps.setInt(6, appSlot_id);
            ps.setString(7, pat_icnum);
            ps.setInt(8, staff_id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	// LIST ALL APPOINTMENT 
	public static List<Appointment> getAllAppointment() 
	{
		List<Appointment> app = new ArrayList<Appointment>();
		
		try {
			currentCon = ConnectionManager.getConnection();
			ps = currentCon.prepareStatement("SELECT DISTINCT a.app_id, a.app_date, a.app_type, a.app_status, a.app_desc, a.pat_icnum, a.staff_id FROM appointment a "
					+ "INNER JOIN staff d ON a.staff_id = d.staff_id "
					+ "INNER JOIN appointment a1 ON a.staff_id= a1.staff_id "
					+ "INNER JOIN patient p ON a1.pat_icnum = p.pat_icnum ");
			
			ResultSet rs = ps.executeQuery();
			

			while (rs.next()) 
			{
				 
				Appointment a = new Appointment();

				a.setApp_id(rs.getInt("app_id"));
				a.setApp_date(rs.getString("app_date"));
				a.setApp_type(rs.getString("app_type"));
				a.setApp_status(rs.getString("app_status"));
				a.setApp_desc(rs.getString("app_desc"));
				//PATIENT
				a.setPat(PatientDAO.getPatientByIcNum(rs.getString("pat_icnum")));
				
				//STAFF
				a.setStaff(StaffDAO.getStaffById(rs.getInt("staff_id")));
				
				
				app.add(a);

			}
			currentCon.close();
		} 
		
		catch (Exception ex) {
			ex.printStackTrace();
		}
		return app;
	}
	
	//LIST MY APPOINTMET
	public static List<Appointment> getAllAppointmentByIc(String pat_icNum) 
    {
        List<Appointment> app = new ArrayList<Appointment>();

        try {
            currentCon = ConnectionManager.getConnection();
            ps = currentCon.prepareStatement("SELECT DISTINCT a.app_id, a.app_date, a.app_type, a.app_status, a.app_desc, a.pat_icnum, a.staff_id FROM appointment a "
                    + "INNER JOIN staff s ON a.staff_id = s.staff_id "
                    + "INNER JOIN appointment a1 ON a.staff_id= a1.staff_id "
                    + "INNER JOIN patient p ON a1.pat_icnum = p.pat_icnum WHERE pat_icNum=?");

            ResultSet rs = ps.executeQuery();


            while (rs.next()) 
            {

                Appointment a = new Appointment();

                a.setApp_id(rs.getInt("app_id"));
                a.setApp_date(rs.getString("app_date"));
                a.setApp_type(rs.getString("app_type"));
                a.setApp_status(rs.getString("app_status"));
                a.setApp_desc(rs.getString("app_desc"));
                //PATIENT
                a.setPat(PatientDAO.getPatientByIcNum(rs.getString("pat_icnum")));

                //DENTIST
                a.setStaff(StaffDAO.getStaffById(rs.getInt("staff_id")));


                app.add(a);

            }
            currentCon.close();
        } 

        catch (Exception ex) {
            ex.printStackTrace();
        }
        return app;
    }

}
