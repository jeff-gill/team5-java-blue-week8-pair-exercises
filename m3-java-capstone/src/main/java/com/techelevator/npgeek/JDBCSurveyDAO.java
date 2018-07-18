package com.techelevator.npgeek;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component

public class JDBCSurveyDAO implements SurveyDAO{
	
	private JdbcTemplate jdbcTemplate;
	
	public JDBCSurveyDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void createSurvey(String favoritePark, String email, String stateOfResidence, String activityLevel) {
		
		String sqlCreateSurvey = "insert into survey_result (parkcode, emailaddress, state, activitylevel) "
								+ "values (?, ?, ?, ?)";
		
	}

	

}
