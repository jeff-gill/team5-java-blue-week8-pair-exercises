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
	<div class="fiveDayWeatherContainer">
		
			<div class="todayWeatherContainer">
<c:forEach var="weather" items="${weather}">
				<div id="todayWeatherTitle">
					<b><i>Today's Weather: </i></b>
				</div>
				<div id="todayWeatherPic">
					<a>
						<img src="img/weather/${weather.forecast}">
					</a>
				</div>
				<div class="todayWeatherTempContainer">
					<div class="todayWeatherTempHighContainer">
						<div id="todayWeatherHighTitle">
							<b> <i>High:</i></b>
						</div>
						<div id="todayWeatherHighTemp">${weather.highTemperature}</div>
					</div>
					<div class="todayWeatherTempLowContainer">
						<div id="todayWeatherLowTitle">
							<b> <i>Low:</i></b>
						</div>
						<div id="todayWeatherLowTemp">${weather.highTemperature}</div>
					</div>
				</div>
				<div id="todayWeatherAdvisoryContainer">
					<div id="todayWeatherAdvisoryTitle">
						<b><i>Today's Advisory:</i></b>
					</div>
					<div id="todayWeatherAdvisoryMessage">Wear a rain coat?</div>
				</div>
</c:forEach>
			</div>
		
		<!-- <div class="afterTodayWeatherContainer">

			<div id="afterTodayWeatherTitle">
				<i> <b>Today's Weather:</b>
				</i>
			</div>
			<div id="afterTodayWeatherPic">
				<img src=#>
			</div>
			<div class="afterTodayWeatherTempContainer">
				<div class="afterTodayWeatherTempHighContainer">
					<div id="afterTodayWeatherHighTitle">
						<b> <i>High:</i></b>
					</div>
					<div id="afterTodayWeatherHighTemp">79º</div>
				</div>
				<div class="afterTodayWeatherTempLowContainer">
					<div id="afterTodayWeatherLowTitle">
						<b> <i>Low:</i></b>
					</div>
					<div id="afterTodayWeatherLowTemp">53º</div>
				</div>
			</div>
		</div> -->
	</div>


</section>

</body>
</html>