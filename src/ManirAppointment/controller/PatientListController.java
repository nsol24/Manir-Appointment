package ManirAppointment.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ManirAppointment.dao.PatientDAO;

/**
 * Servlet implementation class PatientListController
 */
@WebServlet("/PatientListController")
public class PatientListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDAO dao;  
	HttpSession session;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientListController() {
        super();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		session = request.getSession(true);
		int staff_id = (int)session.getAttribute("sessionId");
		request.setAttribute("pat", PatientDAO.getAllPatient());
		if ((staff_id ==1001) || (staff_id ==1006 ))
		{
			RequestDispatcher view = request.getRequestDispatcher("admin-ListPat.jsp");
			view.forward(request, response);
		}
		else 
		{
			RequestDispatcher view = request.getRequestDispatcher("rec-ListPat.jsp");
			view.forward(request, response);
		}
	}

}