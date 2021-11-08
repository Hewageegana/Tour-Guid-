package oop.tourguide.service;

import oop.tourguide.model.Tour;
import oop.tourguide.util.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;



import java.sql.ResultSet;


public class ITourServiceImp implements ITourService  {
	
	public static final Logger log = Logger.getLogger(ITourService.class.getName());
	
	private static Connection connection;
	//private static Statement statement;
	private static PreparedStatement preparedStatement;
	
	
	
	
	//add tour
	
	
	
	public void addTour(Tour tour) {
		
		try {
		connection = DBconnection.con();
		
		preparedStatement = connection.prepareStatement("insert into tourdetails values(?,?,?,?,?)");
		
		preparedStatement.setString(1, tour.getTourID());
		preparedStatement.setString(2, tour.getTopic());
		preparedStatement.setString(3, tour.getDuration());
		preparedStatement.setString(4, tour.getPrice());
		preparedStatement.setString(5, tour.getPickup());
		
			
		preparedStatement.executeUpdate();
		
		}
		catch(Exception e) {
		log.log(Level.SEVERE, e.getMessage());	
	}
		 finally {
				
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
}
	
	
	
	
	
	
	
	
	
	
	/*display*/
	
	public ArrayList<Tour> displaytours(){
		
		ArrayList<Tour> tourlist = new ArrayList<Tour>();
		try {
		connection = DBconnection.con();
		
		preparedStatement = connection.prepareStatement("select * from tourdetails");
		
		

		
		
		ResultSet result = preparedStatement.executeQuery();
		while(result.next()) {
			
			Tour tour = new Tour();
			tour.setTourID(result.getString("tourID"));
			tour.setTopic(result.getString("place"));
			tour.setDuration(result.getString("duration"));
			tour.setPrice(result.getString("price"));
			tour.setPickup(result.getString("pickup"));
			
			tourlist.add(tour);
		}
		
		}
		catch(Exception e) {
		log.log(Level.SEVERE, e.getMessage());	
		
		
		
	}
		
		return tourlist;
	}
	
	
	
	
	
	
	
	
	
	
	//update
	
public boolean updateTour(Tour tour) {
		
		boolean rowUpdated = false;
		try {
			connection = DBconnection.con();
			
			preparedStatement = connection.prepareStatement("update tourdetails  set place=?, duration=?, price=?, pickup=? where tourID=?");
			

			 
			
			preparedStatement.setString(1, tour.getTopic());
			preparedStatement.setString(2, tour.getDuration());
			preparedStatement.setString(3, tour.getPrice());
			preparedStatement.setString(4, tour.getPickup()); 
			preparedStatement.setString(5, tour.getTourID());

		
			  
			  rowUpdated = preparedStatement.executeUpdate() > 0;
						
		}catch(SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {

			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
		return rowUpdated;
		
	}


	
	
	
	
	@Override
	/*delete*/
	public void deleteTour(String tourID) {
		
		try {
			connection = DBconnection.con();
			
			preparedStatement = connection.prepareStatement("delete from  tourdetails where tourID= ?");
			
			preparedStatement.setString(1,tourID);
			
			preparedStatement.executeUpdate();
			
			
		}catch(SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {

			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
	}
	
}
