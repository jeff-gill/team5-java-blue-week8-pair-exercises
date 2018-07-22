package com.techelevator;

import static org.junit.Assert.assertNotNull;

import java.sql.SQLException;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;


import com.techelevator.npgeek.JDBCWeatherDAO;
import com.techelevator.npgeek.Weather;

public class JDBCWeatherDAOIngegrationTest {
	
	private static final String TEST_PARK_CODE = "AAA";
	
	private static SingleConnectionDataSource dataSource;
	private JDBCWeatherDAO dao;
	
	@BeforeClass
	public static void setupDataSource() {
		dataSource = new SingleConnectionDataSource();
		dataSource.setUrl("jdbc:postgresql://localhost:5432/npgeek");
		dataSource.setUsername("postgres");
		dataSource.setPassword("postgres1");
		
		dataSource.setAutoCommit(false);
	}
	
	@AfterClass
	public static void closeDataSource() throws SQLException {
		dataSource.destroy();
	}
	
	@Before
	public void setup() {
		dao = new JDBCWeatherDAO(dataSource);
	}
	
	@After
	public void rollback() throws SQLException {
		dataSource.getConnection().rollback();
	}
	
	@Test
	public void get_weather_by_park_code() {
		String sqlInsertWeather = "INSERT INTO weather (parkcode, fivedayforecastvalue, low, high, forecast) VALUES ('GNP', 6, 43, 58, 'cloudy')";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sqlInsertWeather);
		
		List<Weather> results = dao.getWeatherByParkCode("GNP");
		
		assertNotNull(results);
	}

}
