package com.techelevator.npgeek;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes()

public class ParksController {
	
	@Autowired
	private ParkDAO parkDao;
	
	@Autowired
	private WeatherDAO weatherDao;
	
	@RequestMapping(path="/homePage", method=RequestMethod.GET)
	public String homePage(ModelMap model) {
		List <Park> parks = parkDao.getAllParks();
		model.addAttribute("parks", parks);
		return "homePage";
	}
	
	@RequestMapping("/parkDetail")
	public String parkDetail(HttpServletRequest request) {
		String parkCode = request.getParameter("parkCode");
		for(Park p : getParks()) {
			if(p.getParkCode().equals(parkCode)) {
				request.setAttribute("park", p);
			}
		}
		for(Weather w : getWeather(parkCode)) {
			if(w.getParkCode().equals(parkCode)) {
				request.setAttribute("weather", w);
			}
				
		}
		return "parkDetail";
	}

	private List<Weather> getWeather(String parkCode) {
		List<Weather> weather = weatherDao.getWeatherByParkCode(parkCode);
		return weather;
	}

	private List<Park> getParks() {
		List<Park> parks = parkDao.getAllParks();
		return parks;
	}


}
