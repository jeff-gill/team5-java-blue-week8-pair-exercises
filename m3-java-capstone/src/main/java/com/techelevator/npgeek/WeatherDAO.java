package com.techelevator.npgeek;

import java.util.List;

public interface WeatherDAO {
	
	
	List<Weather> getWeatherByParkCode(String parkCode);

	List<Weather> getWeather(String parkCode);

}
