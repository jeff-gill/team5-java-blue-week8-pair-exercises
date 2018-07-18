package com.techelevator.npgeek;

public class Weather {
	private String parkCode;
	private int dayForForcast;
	private int lowTemperature;
	private int highTemperature;
	private String forecast;
	
	
	public String getParkCode() {
		return parkCode;
	}
	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}
	public int getDayForForcast() {
		return dayForForcast;
	}
	public void setDayForForcast(int dayForForcast) {
		this.dayForForcast = dayForForcast;
	}
	public int getLowTemperature() {
		return lowTemperature;
	}
	public void setLowTemperature(int lowTemperature) {
		this.lowTemperature = lowTemperature;
	}
	public int getHighTemperature() {
		return highTemperature;
	}
	public void setHighTemperature(int highTemperature) {
		this.highTemperature = highTemperature;
	}
	public String getForecast() {
		return forecast;
	}
	public void setForecast(String forecast) {
		this.forecast = forecast;
	}
	
	

}
