package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component

public class JDBCWeatherDAO implements WeatherDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public JDBCWeatherDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Weather> getWeatherByParkCode(String parkCode) {
		
		List<Weather> allWeather = new ArrayList<Weather>();
		String sqlSelectAllWeather = "select * from weather where Lower(parkcode) = Lower(?)";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllWeather, parkCode);
		
		while(results.next()) {
			allWeather.add(mapRowToWeather(results));
		}
		
		
		return allWeather;
	}

	private Weather mapRowToWeather(SqlRowSet results) {
		Weather weather = new Weather();
		weather.setParkCode(results.getString("parkcode"));
		weather.setDayForForcast(results.getInt("fivedayforecastvalue"));
		weather.setLowTemperature(results.getInt("low"));
		weather.setHighTemperature(results.getInt("high"));
		weather.setForecast(results.getString("forecast"));
		
		return weather;
	}

}
