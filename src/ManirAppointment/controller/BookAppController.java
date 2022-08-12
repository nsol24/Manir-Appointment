package ManirAppointment.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ManirAppointment.dao.AppointmentDAO;
import ManirAppointment.model.Appointment;

/**
 * Servlet implementation class BookAppController
 */
@WebServlet("/BookAppController")
public class BookAppController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AppointmentDAO dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookAppController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Appointment app = new Appointment();
		
		//retrieve input and set
		app.setPat_icNum(request.getParameter("pat_icnum"));
		
		app.setApp_date(request.getParameter("app_date"));
		app.setApp_type(request.getParameter("app_type"));
		app.setApp_status(request.getParameter("app_status"));
		
		app.setApp_desc(request.getParameter("app_desc"));
		app.setStaff_id(Integer.parseInt(request.getParameter("staff_id")));
		
		
		request.setAttribute("app", AppointmentDAO.getAllAppointment());
		RequestDispatcher view = request.getRequestDispatcher("patient-homepage.jsp");
		view.forward(request, response);
	}

}
