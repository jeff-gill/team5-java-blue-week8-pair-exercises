package com.techelevator.npgeek;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Survey {
	
	@NotBlank(message="Please choose a favorite National Park")
	private String favoritePark;
	
	@NotBlank(message="Email address is required")
	@Email(message="Valid email address is required")
	private String email;
	
	@NotBlank(message="Please choose your State of residence")
	private String stateOfResidence;
	
	@NotBlank(message="Please choose your activity level")
	private String activityLevel;

	public String getFavoritePark() {
		return favoritePark;
	}

	public void setFavoritePark(String favoritePark) {
		this.favoritePark = favoritePark;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStateOfResidence() {
		return stateOfResidence;
	}

	public void setStateOfResidence(String stateOfResidence) {
		this.stateOfResidence = stateOfResidence;
	}

	public String getActivityLevel() {
		return activityLevel;
	}

	public void setActivityLevel(String activityLevel) {
		this.activityLevel = activityLevel;
	}
	
	

}
