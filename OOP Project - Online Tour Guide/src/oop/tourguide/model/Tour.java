package oop.tourguide.model;

public class Tour {

	String tourID;
	String topic;
	String pickup;
	String price;
	String duration;
	String imageFileName;
	
	
	public Tour(){}
	
	public Tour(String tourID, String topic,String duration , String price, String pickup) {
		super();
		
		this.tourID = tourID;
		this.topic = topic;
		this.duration = duration;
		this.price = price;
		this.pickup = pickup;
	}
	
	
	
	public String getTourID() {
		return tourID;
	}
	public void setTourID(String tourID) {
		this.tourID = tourID;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getPickup() {
		return pickup;
	}
	public void setPickup(String pickup) {
		this.pickup = pickup;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	
	
	
	
	
	
	
	
	
	
}
