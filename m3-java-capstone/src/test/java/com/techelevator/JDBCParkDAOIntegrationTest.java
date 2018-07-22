package com.techelevator;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.sql.SQLException;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

import com.techelevator.npgeek.JDBCParkDAO;
import com.techelevator.npgeek.Park;

public class JDBCParkDAOIntegrationTest {
	
	private static final String TEST_PARK_CODE = "AAA";
	
	private static SingleConnectionDataSource dataSource;
	private JDBCParkDAO dao;
	
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
		dao = new JDBCParkDAO(dataSource);
	}
	
	@After
	public void rollback() throws SQLException {
		dataSource.getConnection().rollback();
	}
	
	@Test
	public void getAllParks () {
		String sqlInsertPark = "INSERT INTO park (parkcode, parkname, state, acreage, elevationinfeet, milesoftrail, numberofcampsites, climate, yearfounded, annualvisitorcount, inspirationalquote, inspirationalquotesource, parkdescription, entryfee, numberofanimalspecies) "
				+ "VALUES ('AAA', 'Gordys Park', 'Ohio', 4500, 250, 123.4, 58, 'Temperate', 1983, 700000, 'Be a good person', 'Gordy', 'Best Park in the world', 0, 8000)";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sqlInsertPark);
		List<Park> results = dao.getAllParks();

		assertNotNull(results);
		assertTrue("AAA", results.size()>=1);
	}

}
