package com.techelevator.npgeek;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@SessionAttributes()

public class ParksController {

	@Autowired
	private ParkDAO parkDao;

	@Autowired
	private WeatherDAO weatherDao;

	@Autowired
	private SurveyDAO surveyDao;

	@RequestMapping(path = "/homePage", method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		List<Park> parks = parkDao.getAllParks();
		model.addAttribute("parks", parks);
		return "homePage";
	}

	@RequestMapping("/parkDetail")
	public String parkDetail(HttpServletRequest request) {
		String parkCode = request.getParameter("parkCode");
		for (Park p : getParks()) {
			if (p.getParkCode().equals(parkCode)) {
				request.setAttribute("park", p);
			}

			request.setAttribute("weather", weatherDao.getWeatherByParkCode(parkCode));
		}

		return "parkDetail";
	}

	@RequestMapping(path = "/survey", method = RequestMethod.GET)
	public String showSurveyForm(ModelMap map, Model model) {
		List<Park> parks = parkDao.getAllParks();
		map.addAttribute("park", parks);

		if (!model.containsAttribute("survey")) {
			model.addAttribute("survey", new Survey());
		}
		return "survey";

	}

	@RequestMapping(path = "/survey", method = RequestMethod.POST)

	public String handleSurveyForm(@Valid @ModelAttribute("survey") Survey survey, BindingResult result,
			RedirectAttributes attr, ModelMap map) {
		if (result.hasErrors()) {
			List<Park> parks = parkDao.getAllParks();
			map.addAttribute("park", parks);
			return "survey";
		}
		surveyDao.createSurvey(survey);
		return "redirect:/homePage";
	}

	@RequestMapping("/favorites")

	public String showFavoritesForm() {

		return "favorites";
	}

	private List<Park> getParks() {
		List<Park> parks = parkDao.getAllParks();
		return parks;
	}

}
