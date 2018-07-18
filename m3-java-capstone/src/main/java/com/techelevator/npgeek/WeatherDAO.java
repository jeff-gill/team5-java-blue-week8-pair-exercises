package com.techelevator.npgeek;

import java.util.List;

public interface WeatherDAO {
	
	List<Weather> getAllWeather();
	List<Weather> getWeatherByParkCode(String parkCode);

}
