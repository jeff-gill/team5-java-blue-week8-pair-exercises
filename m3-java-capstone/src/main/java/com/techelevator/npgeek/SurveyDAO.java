package com.techelevator.npgeek;

import java.util.List;

public interface SurveyDAO {
	
	public void createSurvey(Survey post);
	
	public List<FavoriteParks> getSurveyResults(String parkCode, String parkName, int voteCount);

}
