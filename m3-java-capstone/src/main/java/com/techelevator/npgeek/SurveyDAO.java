package com.techelevator.npgeek;

import java.util.List;

public interface SurveyDAO {
	
	public void createSurvey(String favoritePark, String email, String stateOfResidence, String activityLevel);
	
	public List<FavoriteParks> getSurveyResults(String parkCode, String parkName, int voteCount);

}
