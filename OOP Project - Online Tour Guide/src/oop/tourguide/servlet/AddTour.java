package oop.tourguide.servlet;
import oop.tourguide.model.Tour;
import oop.tourguide.service.*;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



@WebServlet("/AddTour")
@MultipartConfig
public class AddTour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTour() {
        super();
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException
    {
        try {

        	
        	response.setContentType("text/html");
        	
        	Tour tour = new Tour();
        	
        	tour.setTourID(request.getParameter("tourID"));
        	tour.setTopic(request.getParameter("topic"));
        	tour.setDuration(request.getParameter("duration"));
        	tour.setPrice(request.getParameter("price"));
        	tour.setPickup(request.getParameter("pickup"));
        
        	
        	/*add image*/
        	
        	
        	
        	
        	ITourService iTourService = new ITourServiceImp();
        	iTourService.addTour(tour);
        	
        	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Sucsess.jsp");
        	dispatcher.forward(request, response);
        	
        	
        	
        }
        catch (Exception e){
        	   e.printStackTrace();
        }
        
       
	}

}
