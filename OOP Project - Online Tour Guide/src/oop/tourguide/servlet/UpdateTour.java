package oop.tourguide.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oop.tourguide.model.Tour;
import oop.tourguide.service.ITourServiceImp;
import oop.tourguide.service.ITourService;

/**
 * Servlet implementation class UpdateTour
 */
@WebServlet("/UpdateTour")
public class UpdateTour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTour() {
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
doGet(request, response);
		
		try {
		response.setContentType("text/html");
		
		
		
		String TourID = request.getParameter("tourID");
		String Topic = request.getParameter("topic");
		String Duration = request.getParameter("duration");
		String Price = request.getParameter("price");
		String Pickup = request.getParameter("pickup");
	
		 Tour tour = new Tour(TourID,Topic,Duration,Price,Pickup);
		
		ITourService itourservice = new ITourServiceImp();
		itourservice.updateTour(tour);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Sucsess.jsp");
		
		dispatcher.forward(request, response);
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}

