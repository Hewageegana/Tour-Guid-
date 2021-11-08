package oop.tourguide.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import oop.tourguide.service.ITourServiceImp;
import oop.tourguide.service.ITourService;

/**
 * Servlet implementation class DeleteBooking
 */
@WebServlet("/deleteTour")
public class deleteTour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteTour() {
        super();
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
		//doGet(request, response);
		
		response.setContentType("text/html");
		
		String tourID = request.getParameter("ID");			
		
		ITourService itourservice = new ITourServiceImp();
		
		itourservice.deleteTour(tourID);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Sucsess.jsp");
		
		dispatcher.forward(request, response);
	}

}
