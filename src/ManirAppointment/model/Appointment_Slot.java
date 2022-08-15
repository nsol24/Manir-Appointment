package ManirAppointment.model;

import java.sql.Date;

public class Appointment_Slot {
	private int appSlot_id;
	private int appSlot_quantity;
	private String appSlot_time;
	private String appSlot_date;
	private String appSlot_status;
	
	Staff staff;
	
	public int getAppSlot_id() {
		return appSlot_id;
	}
	public void setAppSlot_id(int appSlot_id) {
		this.appSlot_id = appSlot_id;
	}
	public int getAppSlot_quantity() {
		return appSlot_quantity;
	}
	public void setAppSlot_quantity(int appSlot_quantity) {
		this.appSlot_quantity = appSlot_quantity;
	}
	
	public void setAppSlot_date(String appSlot_date) {
		this.appSlot_date = appSlot_date;
	}
	public String getAppSlot_time() {
		return appSlot_time;
	}
	public void setAppSlot_time(String appSlot_time) {
		this.appSlot_time = appSlot_time;
	}
	public String getAppSlot_status() {
		return appSlot_status;
	}
	public void setAppSlot_status(String appSlot_status) {
		this.appSlot_status = appSlot_status;
	}
	public String getAppSlot_date() {
		return appSlot_date;
	}
	
}
