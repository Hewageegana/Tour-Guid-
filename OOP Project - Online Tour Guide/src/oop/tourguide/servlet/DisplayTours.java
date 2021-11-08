package oop.tourguide.servlet;

import oop.tourguide.model.Tour;
import oop.tourguide.service.*;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class DisplayTours
 */
@WebServlet("/DisplayTours")
public class DisplayTours extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayTours() {
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
		
		response.setContentType("text/html");
		
		ITourService tours = new ITourServiceImp();
		ArrayList <Tour> displaytour = tours.displaytours();
		
		
		
    	
    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/tour.jsp");
    	request.setAttribute("displaytour", displaytour);
    	dispatcher.forward(request, response);
	}

}
