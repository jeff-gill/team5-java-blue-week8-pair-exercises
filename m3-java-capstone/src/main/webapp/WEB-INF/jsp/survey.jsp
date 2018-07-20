<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/Header.jsp" />

<section class="surveyContent">
	<div class="introBar">
		<div id="introTitle">
			<h1>
				<b>Please take our survey.</b>
			</h1>
		</div>
		<p id="introThanks">Thanks you for taking a minute to take out
			survey. With your help, we will be able to make sure people have the
			best information when heading of to visit America's favorite National
			Parks.</p>
		<div class="surveyQuestionsContainer">
			<div id="favoriteParkContainer">
				<div id="surveyParkTitle">
					Favorite National Park:</div>
					<div id="surveyParkChoice">
						<select name="surveyChoice">
							<option value="Choose a Park">Choose a Park</option>
							<c:forEach items="${park.parkName}" var="favorite">
								<option value="${park.parkName}">${park.parkName}</option>
							</c:forEach>
						</select>
					</div>
			</div>
			<div id="favoritEmailContainer">
				<div id="surveyEmailTitle">Your Email:</div>
				<div id="surveyEmailChoice">
					<form id="surveyChoice">
						<input type="text" name="email" id="surveyEmailEntry"
							placeholder="Enter valid email address" size="35"/>
					</form>
				</div>

			</div>
			<div id="favoriteStateContainer">
				<div id="surveyStateTitle">State of Residence:</div>
				<div id=surveyStateChoice>
				<select name="surveyChoice">
					<option value="State of Residence">State of Residence</option>
					<option value="AL">Alabama</option>
					<option value="AK">Alaska</option>
					<option value="AZ">Arizona</option>
					<option value="AR">Arkansas</option>
					<option value="CA">California</option>
					<option value="CO">Colorado</option>
					<option value="CT">Connecticut</option>
					<option value="DE">Delaware</option>
					<option value="DC">District Of Columbia</option>
					<option value="FL">Florida</option>
					<option value="GA">Georgia</option>
					<option value="HI">Hawaii</option>
					<option value="ID">Idaho</option>
					<option value="IL">Illinois</option>
					<option value="IN">Indiana</option>
					<option value="IA">Iowa</option>
					<option value="KS">Kansas</option>
					<option value="KY">Kentucky</option>
					<option value="LA">Louisiana</option>
					<option value="ME">Maine</option>
					<option value="MD">Maryland</option>
					<option value="MA">Massachusetts</option>
					<option value="MI">Michigan</option>
					<option value="MN">Minnesota</option>
					<option value="MS">Mississippi</option>
					<option value="MO">Missouri</option>
					<option value="MT">Montana</option>
					<option value="NE">Nebraska</option>
					<option value="NV">Nevada</option>
					<option value="NH">New Hampshire</option>
					<option value="NJ">New Jersey</option>
					<option value="NM">New Mexico</option>
					<option value="NY">New York</option>
					<option value="NC">North Carolina</option>
					<option value="ND">North Dakota</option>
					<option value="OH">Ohio</option>
					<option value="OK">Oklahoma</option>
					<option value="OR">Oregon</option>
					<option value="PA">Pennsylvania</option>
					<option value="RI">Rhode Island</option>
					<option value="SC">South Carolina</option>
					<option value="SD">South Dakota</option>
					<option value="TN">Tennessee</option>
					<option value="TX">Texas</option>
					<option value="UT">Utah</option>
					<option value="VT">Vermont</option>
					<option value="VA">Virginia</option>
					<option value="WA">Washington</option>
					<option value="WV">West Virginia</option>
					<option value="WI">Wisconsin</option>
					<option value="WY">Wyoming</option>
				</select>
				</div>
			</div>

			<div id="activityLevelContainer">
				<div id="surveyActivityTitle">Activity Level:</div>
				<div id="surveyActivityChoice">
					<input type="radio" name="activity" value="Inactive">
					Inactive <input type="radio" name="activity" value="Sedentary">
					Sedentary <input type="radio" name="activity" value="Active">
					Active <input type="radio" name="activity" value="Extremely Active">
					Extremely Active
				</div>
			</div>
			<div id="submitButton">
				<input class="formSubmitButton" type="submit" value="Submit" />
			</div>
		</div>


	</div>
	</div>


</section>
</body>
</html>

