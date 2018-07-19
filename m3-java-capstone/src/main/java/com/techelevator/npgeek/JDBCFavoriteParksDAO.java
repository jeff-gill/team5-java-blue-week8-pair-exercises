package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component

public class JDBCFavoriteParksDAO implements FavoriteParksDAO{
	
	private JdbcTemplate jdbcTemplate;

	public JDBCFavoriteParksDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Park> getCountByParkCode() {
		
		List <Park> favoriteParks = new ArrayList<Park>();
		String sqlSelectParkByVoteCount = "select parkname, Lower(survey_result.parkcode) as lowerparkcode, count (survey_result.parkcode) as parkcodecount from survey_result" + 
				"join park on survey_result.parkcode = park.parkcode" + 
				"group by survey_result.parkcode, park.parkname" + 
				"order by count (survey_result.parkcode) DESC";
				
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectParkByVoteCount);
		
		while(results.next()) {
			favoriteParks.add(mapRowToPark(results));
		}
		return favoriteParks;
	}

	private Park mapRowToPark(SqlRowSet results) {
		Park favoritePark = new Park();
		favoritePark.setParkCode(results.getString("lowerparkcode"));
		favoritePark.setParkName(results.getString("parkname"));
		favoritePark.setVoteCount(results.getInt("parkcodecount"));
		
		return favoritePark;
	}

}
