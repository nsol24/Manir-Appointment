package ManirAppointment.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ManirAppointment.model.Appointment;
import ManirAppointment.model.Appointment_Slot;
import db.connection.ConnectionManager;
import java.util.ArrayList;
import java.util.List;
import java.security.*;
import db.connection.ConnectionManager;

public class AppointmentSlotDAO {

	static Connection con = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static ResultSet rs = null; 
	static int appSlot_id;
	static int appSlot_quantity;
	static String appSlot_time, appSlot_date, appSlot_status;
	
	
	//CREATE APPOINTMENT
    public void addSlot(Appointment_Slot bean) throws NoSuchAlgorithmException{
        appSlot_date = bean.getAppSlot_date();
        appSlot_time= bean.getAppSlot_time();
        appSlot_status = bean.getAppSlot_status();
       appSlot_quantity= bean.getAppSlot_quantity();

        try {
            con = ConnectionManager.getConnection();
            ps = con.prepareStatement(  "INSERT INTO appointment_slot (appSlot_date, appSlot_time, appSlot_status, appSlot_quantity) VALUES (?,?,?,?)");
            ps.setString(1, appSlot_date);
            ps.setString(2, appSlot_time);
            ps.setString(3, appSlot_status);
            ps.setInt(4, appSlot_quantity);
            
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	//list all slot
	public static List<Appointment_Slot> getAllSlot() {
		List<Appointment_Slot> appSlot = new ArrayList<Appointment_Slot>();
		try {
			con = ConnectionManager.getConnection();
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select appSlot_id, appSlot_time, appSlot_date, appSlot_status, appSlot_quantity from appointment_slot");

			while (rs.next()) {
				Appointment_Slot p = new Appointment_Slot();
				p.setAppSlot_id(rs.getInt("appSlot_id"));
				p.setAppSlot_time(rs.getString("appSlot_time"));
				p.setAppSlot_date(rs.getString("appSlot_date"));
				p.setAppSlot_status(rs.getString("appSlot_status"));
				p.setAppSlot_quantity(rs.getInt("appSlot_quantity"));
				
				appSlot.add(p);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return appSlot;
	}
	//LIST APP BY ID
	public static List<Appointment_Slot> getAppointmentSlotById(int appSlot_id) 
	{
		List<Appointment_Slot> appSlot = new ArrayList<Appointment_Slot>();
		
		try {
			con = ConnectionManager.getConnection();
			ps = con.prepareStatement("select * from appointment_slot where appSlot_id=?");
			ps.setInt(1,appSlot_id);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) 
			{
				 
				Appointment_Slot a = new Appointment_Slot();

				    a.setAppSlot_id(rs.getInt("appSlot_id"));
					a.setAppSlot_date(rs.getString("appSlot_date"));
					a.setAppSlot_time(rs.getString("appSlot_time"));
					a.setAppSlot_status(rs.getString("appSlot_status"));
					a.setAppSlot_quantity(rs.getInt("appSlot_quantity"));
				
				
				appSlot.add(a);

			}
			con.close();
		} 
		
		catch (Exception ex) {
			ex.printStackTrace();
		}
		return appSlot;
	}
	
	// UPDATE APPOINTMENT SLOT
		public void UpdateAppointmentSlot(Appointment_Slot bean) 
		{
			appSlot_date = bean.getAppSlot_date();
	        appSlot_time= bean.getAppSlot_time();
	        appSlot_status = bean.getAppSlot_status();
	        appSlot_quantity= bean.getAppSlot_quantity();

		
			try 
			{
				con = ConnectionManager.getConnection();
				String query = "UPDATE appointment_slot SET appSlot_date= '" + appSlot_date + "', appSLot_time= '" + appSlot_time + "', appSlot_status= '" + appSlot_status + "', appSlot_quantity= '" + appSlot_quantity + "'  WHERE appSlot_id= '"+ appSlot_id +"' ";

				stmt = con.createStatement();
				stmt.executeUpdate(query);
			}
			catch (Exception ex) 
			{
				ex.printStackTrace();
				
			}
		}
	
	//delete slot
	public void deleteAppointmentSlot(int appSlot_id) {
		try {
			con = ConnectionManager.getConnection(); // 2. establish connection
			ps = con.prepareStatement("DELETE FROM appointment_slot WHERE appSlot_id=?"); // 3. create statement
			ps.setInt(1, appSlot_id);
			ps.executeUpdate();// 3. execute statement

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
