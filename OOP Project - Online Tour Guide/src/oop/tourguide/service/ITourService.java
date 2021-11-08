package oop.tourguide.service;
import java.util.ArrayList;

import oop.tourguide.model.Tour;
import java.util.logging.Logger;



public interface ITourService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(ITourService.class.getName());

	/** Add User for UserDetails table */
	public void addTour(Tour tour);
	
	/*display tours*/
	public ArrayList<Tour> displaytours();

	/*update tours*/
	public boolean updateTour(Tour tour);
	
	/*delete tours*/
	public void deleteTour(String tourID);

	
}
