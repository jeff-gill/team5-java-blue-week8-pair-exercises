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
	public void createSurvey(Survey post) {
		//Long id = getNextId();
		String sqlInsertSurvey = "insert into survey_result (parkcode, emailaddress, state, activitylevel)" + 
				"values (?, ?, ?, ?)";
		jdbcTemplate.update(sqlInsertSurvey, post.getFavoritePark(), post.getEmail(), post.getStateOfResidence(), post.getActivityLevel());
		//post.setId(id);
	}


	@Override
	public List<FavoriteParks> getSurveyResults() {
		
		List<FavoriteParks> favoritePark = new ArrayList<FavoriteParks>();
		String sqlSelectSurveyResults = "select count(park.parkcode) as parkcodecount, survey_result.parkcode, park.parkname from survey_result " + 
				"join park on survey_result.parkcode = lower(park.parkcode) " + 
				"group by survey_result.parkcode, park.parkname " + 
				"having count(park.parkcode) > 1 " + 
				"order by count(park.parkcode) DESC limit 5";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectSurveyResults);
		
		while(results.next()) {
			favoritePark.add(mapRowToFavoriteParks(results));
		}
		
		return favoritePark;
	}

	private FavoriteParks mapRowToFavoriteParks(SqlRowSet results) {
		FavoriteParks favoritePark = new FavoriteParks();
		favoritePark.setParkCode(results.getString("parkcode"));
		favoritePark.setParkName(results.getString("parkname"));
		favoritePark.setVoteCount(results.getInt("parkcodecount"));
		
		return favoritePark;
	}

	
//	
//	private Long getNextId() {
//		String sqlSelectNextId = "select nextval ('seq_surveyid')";
//		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNextId);
//		Long id = null;
//		if(results.next()) {
//			id = results.getLong(1);
//		} else {
//			throw new RuntimeException("Something strange happened, unable to select next survey post id from sequence");
//		}
//		return id;
//	}

	

}
