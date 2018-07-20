<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/Header.jsp" />

<section class="detailContent">
	<div class="detailsImageParkNameStateContainer">
		<div class="detailImage">
			<img src="img/parks/${park.parkCode}.jpg" />
		</div>

		<div class="detailParkNameStateSubContainer">
			<div id="detailParkName">${park.parkName}</div>
			<div id="detailState">${park.state}</div>
		</div>
	</div>
	<div class="detailQuoteContainer">
		<div id="detailQuote">
			<i>${park.inspirationalQuote}</i>
		</div>
		<div id="detailQuoteSource">
			<i>~${park.inspirationalQuoteSource}</i>
		</div>
	</div>
	<div class="parkAmmenitiesContainer">
		<div class="parkAmmenitiesDescription">
			<b>Park Description:</b> <br> ${park.parkDescription}
		</div>
		<div class="parkAmmenitiesDetailsContainer">
			<div id="leftParkAmmenities">
				<p>
					<b>Climate:</b> ${park.climate}
				</p>
				<p>
					<b>Annual Visitors</b> : ${park.annualVisitorCount}
				</p>
				<a> <b>Year founded:</b> ${park.yearFounded}
				</a>
			</div>
			<div id="middleParkAmmenities">
				<p>
					<b>Park Acreage:</b> ${park.acerage}
				</p>
				<p>
					<b>Number of Campsites</b> : ${park.numberOfCampsites}
				</p>
				<a> <b>Entry Fee:</b> $${park.entryFee}.00
				</a>
			</div>
			<div id="rightParkAmmenities">
				<p>
					<b>Miles of Trail:</b> ${park.milesOfTrail}
				</p>
				<p>
					<b>Elevation in Feet:</b> ${park.elevationInFeet}
				</p>
				<a> <b>Number of Animal Species:</b>
					${park.numberOfAnimalSpecies}
				</a>
			</div>

		</div>

	</div>
	<div class="todaysWeatherTitle">
		<b><i>5-Day Weather Forecast: </i></b>
	</div>
	<div class="fiveDayWeatherContainer">

		<div class="todayWeatherContainer">
			<c:forEach var="todayWeather" items="${weather}">

				<c:choose>
					<c:when test="${todayWeather.dayForForcast > 0}">
						<div class="weatherByDay">
							<div >
								<img id="weatherPicDayOne" src="img/weather/${todayWeather.forecast}.png">
							</div>
							<div class="todayWeatherTempContainer">
								<div class="todayWeatherTempHighContainer" >
									<div id="todayWeatherHighLowTitle">
										<b> <i>High:</i></b>
									</div>
									<div id="todayWeatherHighTemp">${todayWeather.highTemperature}</div>
								</div>
								<div>
								
									<div id="todayWeatherHighTitle">
										<b> <i>Low:</i></b>
									</div>
									<div id="todayWeatherLowTemp">${todayWeather.lowTemperature}</div>
								</div>
							</div>
							<div id="todayWeatherAdvisoryContainer">
								<div id="advisoryOne">
									<c:choose>
										<c:when test="${todayWeather.forecast == 'thunderstrorms'}">
											<div>
												<b><i>Weather Advisory: </i></b>Please seek shelter and
												avoid hiking on exposed ridges.
											</div>
										</c:when>
										<c:when test="${todayWeather.forecast == 'sunny'}">
											<div>
												<b><i>Weather Advisory: </i></b>Be sure to pack sunblock.
											</div>
										</c:when>
										<c:when test="${todayWeather.forecast == 'snow'}">
											<div>
												<b><i>Weather Advisory: </i></b>Be sure to pack snowshoes.
											</div>
										</c:when>
										<c:when test="${todayWeather.forecast == 'rain'}">
											<div>
												<b><i>Weather Advisory: </i></b>Be sure to pack rain gear
												and wear waterproof shoes.
											</div>
										</c:when>
										<c:otherwise>
											<div></div>
										</c:otherwise>
									</c:choose>
								</div>
							
							<div id="advisoryTwo">
								<c:choose>
									<c:when test="${todayWeather.highTemperature >= 75}">
										<div><b><i>Weather Advisory: </i></b>Park Service recommends to bring an extra gallon of
											water.</div>
									</c:when>
									<c:when
										test="${todayWeather.highTemperature - todayWeather.lowTemperature  >= 20}">
										<div><b><i>Weather Advisory: </i></b>Be sure to wear breathable layers.</div>
									</c:when>
									<c:when test="${todayWeather.lowTemperature <= 20}">
										<div><b><i>Weather Advisory: </i></b>Be sure to warn the user of the dangers of exposure
											to frigid temperatures.</div>
									</c:when>
									<c:otherwise>
										<div>HAVE FUN!</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						</div>
					</c:when>

				</c:choose>



			</c:forEach>
		</div>

	</div>



</section>

</body>
</html>