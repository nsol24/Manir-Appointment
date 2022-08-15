package ManirAppointment.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ManirAppointment.dao.AppointmentSlotDAO;
import ManirAppointment.model.Appointment_Slot;

/**
 * Servlet implementation class UpdateSlotController
 */
@WebServlet("/UpdateSlotController")
public class UpdateSlotController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       AppointmentSlotDAO dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSlotController() {
        super();
        dao = new AppointmentSlotDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int as = Integer.parseInt(request.getParameter("appSlot_id"));
		System.out.println("SAYA SUKA "+as);
		request.setAttribute("appSlot", AppointmentSlotDAO.getAppointmentById(as));
		RequestDispatcher view = request.getRequestDispatcher("admin-updateSlot.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Appointment_Slot s = new Appointment_Slot();
		
		s.setAppSlot_id(Integer.parseInt(request.getParameter("appSlot_id"))); 
		s.setAppSlot_time(request.getParameter("appSlot_time"));    
	    s.setAppSlot_status(request.getParameter("appSlot_status"));
	    s.setAppSlot_date(request.getParameter("appSlot_date"));
		
        
        dao.UpdateAppointmentSlot(s);
        
       
        response.sendRedirect("ViewSlotController");
	}
	

}
