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
			<b>Park Description:</b> <br>
			${park.parkDescription}</div>
		<div class="parkAmmenitiesDetailsContainer">
			<div id="leftParkAmmenities">
				<p> <b>Climate:</b> ${park.climate}
				</p> <p> <b>Annual Visitors</b> :
					${park.annualVisitorCount}
				</p> <a> <b>Year founded:</b> ${park.yearFounded}
				</a>
		</div>
			<div id="middleParkAmmenities">
				<p> <b>Park Acreage:</b> ${park.acerage}
				</p><p><b>Number of Campsites</b> :
					${park.numberOfCampsites} </p><a> <b>Entry Fee:</b>
					$${park.entryFee}.00
				</a>
			</div>
			<div id="rightParkAmmenities">
				<p> <b>Miles of Trail:</b> ${park.milesOfTrail}
				</p> <p> <b>Elevation in Feet:</b> ${park.elevationInFeet}
				</p> <a> <b>Number of Animal Species:</b>
					${park.numberOfAnimalSpecies}
				</a>
			</div>

		</div>

	</div>
	<div class="weatherContainer">
	
	
	</div>
</section>

</body>
</html>