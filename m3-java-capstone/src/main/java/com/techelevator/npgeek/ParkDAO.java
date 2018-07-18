package com.techelevator.npgeek;

import java.util.List;

public interface ParkDAO {

	List<Park> getAllParks();
	List<Park> getParkByParkCode(String parkCode);
}
