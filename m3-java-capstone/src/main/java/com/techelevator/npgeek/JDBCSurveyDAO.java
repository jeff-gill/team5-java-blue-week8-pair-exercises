package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
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


	@Override
	public List<FavoriteParks> getSurveyResults(String parkCode, String parkName, int voteCount) {
		
		List<FavoriteParks> favoritePark = new ArrayList<FavoriteParks>();
		String sqlSelectSurveyResults = "select parkname, Lower(survey_result.parkcode) as lowerparkcode, count (survey_result.parkcode) as parkcodecount from survey_result\n" + 
				"join park on survey_result.parkcode = park.parkcode\n" + 
				"group by survey_result.parkcode, park.parkname\n" + 
				"order by count (survey_result.parkcode) DESC";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectSurveyResults);
		
		while(results.next()) {
			favoritePark.add(mapRowToFavoriteParks(results));
		}
		
		return favoritePark;
	}

	private FavoriteParks mapRowToFavoriteParks(SqlRowSet results) {
		FavoriteParks favoritePark = new FavoriteParks();
		favoritePark.setParkCode(results.getString("lowerparkcode"));
		favoritePark.setParkName(results.getNString("parkname"));
		favoritePark.setVoteCount(results.getInt("parkcodecount"));
		
		return favoritePark;
	}

	

}
