package ManirAppointment.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ManirAppointment.dao.AppointmentSlotDAO;
import ManirAppointment.model.Appointment_Slot;
/**
 * Servlet implementation class CreateSlotController
 */
@WebServlet("/CreateSlotController")
public class CreateSlotController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AppointmentSlotDAO dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateSlotController() {
        super();
        dao = new AppointmentSlotDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Appointment_Slot appSlot= new Appointment_Slot();
		appSlot.setAppSlot_date(request.getParameter("appSlot_date"));
		appSlot.setAppSlot_quantity(Integer.parseInt(request.getParameter("appSlot_quantity")));
		appSlot.setAppSlot_time(request.getParameter("appSlot_time"));
		appSlot.setAppSlot_status(request.getParameter("appSlot_status"));
		
		try {
			dao.addSlot(appSlot);
		}catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("appSlot", AppointmentSlotDAO.getAllSlot());
		RequestDispatcher view = request.getRequestDispatcher("admin-viewSlot.jsp");
		view.forward(request, response);
	}

}
