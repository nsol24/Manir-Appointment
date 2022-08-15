package ManirAppointment.model;

import java.util.Date;

public class Appointment {
	private int app_id;
	private String app_date;
	private String app_type;
	private String app_status;
	private String app_desc;
	private String pat_icNum;
	private int queuNum;
	private int staff_id;
	
	Patient pat;
	Staff staff;
		
	public int getApp_id() {
		return app_id;
	}
	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}
	public String getApp_date() {
		return app_date;
	}
	public void setApp_date(String app_date) {
		this.app_date = app_date;
	}
	
	public String getApp_type() {
		return app_type;
	}
	public void setApp_type(String app_type) {
		this.app_type = app_type;
	}
	public String getApp_status() {
		return app_status;
	}
	public void setApp_status(String app_status) {
		this.app_status = app_status;
	}
	public String getApp_desc() {
		return app_desc;
	}
	public void setApp_desc(String app_desc) {
		this.app_desc = app_desc;
	}

	public String getPat_icNum() {
		return pat_icNum;
	}
	public void setPat_icNum(String pat_icNum) {
		this.pat_icNum = pat_icNum;
	}
	public int getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}
	public Patient getPat() {
		return pat;
	}
	public void setPat(Patient pat) {
		this.pat = pat;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public int getQueuNum() {
		return queuNum;
	}
	public void setQueuNum(int queuNum) {
		this.queuNum = queuNum;
	}
	
	
}
