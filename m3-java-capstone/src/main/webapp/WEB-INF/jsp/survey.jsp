<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
			
		<c:url var = "favoriteParkSurvey" value ="/survey"/>	
		<form:form action = "${favoriteParkSurvey}" method = "POST" modelAttribute = "survey">	
		<div class="surveyQuestionsContainer">
			<div id="favoriteParkContainer">
				<div id="surveyParkTitle">
					Favorite National Park:</div>
					<div id="surveyParkChoice">
						<form:select path="favoritePark">
							<form:option value="" label = "Choose a Park"/>
							<c:forEach items="${park}" var="parkChoice">
								<form:option value="${parkChoice.parkCode}" label = "${parkChoice.parkName}"/>
							</c:forEach>
						</form:select>
						<form:errors path = "favoritePark"/>
					</div>
			</div>
			<div id="favoritEmailContainer">
				<div id="surveyEmailTitle">Your Email:</div>
				<div id="surveyEmailChoice">
					<a id="surveyChoice">
						<label for = "email">
						<form:input type="text" path="email" id="surveyEmailEntry"
							placeholder="Enter valid email address" size="35"/></label>
						<form:errors path = "email"/>	
					</a>
				</div>

			</div>
			<div id="favoriteStateContainer">
				<div id="surveyStateTitle">State of Residence:</div>
				<div id=surveyStateChoice>
				<form:select path="stateOfResidence">
					<form:option value="" label = "State of Residence"/>
					<form:option value="AL" label = "Alabama"/>
					<form:option value="AK" label = "Alaska"/>
					<form:option value="AZ" label = "Arizon"/>
					<form:option value="AR" label = "Arkansas"/>
					<form:option value="CA" label = "California"/>
					<form:option value="CO" label = "Colorado"/>
					<form:option value="CT" label = "Connecticut"/>
					<form:option value="DE" label = "Delaware"/>
					<form:option value="DC" label = "District Of Columbia"/>
					<form:option value="FL" label = "Florida"/>
					<form:option value="GA" label = "Georgia"/>
					<form:option value="HI" label ="Hawaii"/>
					<form:option value="ID" label ="Idaho"/>
					<form:option value="IL" label = "Illinois"/>
					<form:option value="IN" label="Indiana"/>
					<form:option value="IA" label= "Iowa"/>
					<form:option value="KS" label="Kansas"/>
					<form:option value="KY" label="Kentucky"/>
					<form:option value="LA" label="Louisiana"/>
					<form:option value="ME" label="Maine"/>
					<form:option value="MD" label="Maryland"/>
					<form:option value="MA" label ="Massachusetts"/>
					<form:option value="MI" label= "Michigan"/>
					<form:option value="MN" label = "Minnesota"/>
					<form:option value="MS" label = "Mississippi"/>
					<form:option value="MO" label = "Missouri"/>
					<form:option value="MT" label = "Montana"/>
					<form:option value="NE" label = "Nebraska"/>
					<form:option value="NV" label = "Nevada"/>
					<form:option value="NH" label = "New Hampshire"/>
					<form:option value="NJ" label = "New Jersey"/>
					<form:option value="NM" label = "New Mexico"/>
					<form:option value="NY" label = "New York"/>
					<form:option value="NC" label ="North Carolina"/>
					<form:option value="ND" label ="North Dakota"/>
					<form:option value="OH" label ="Ohio"/>
					<form:option value="OK" label ="Oklahoma"/>
					<form:option value="OR" label ="Oregon"/>
					<form:option value="PA" label = "Pennsylvania"/>
					<form:option value="RI" label = "Rhode Island"/>
					<form:option value="SC" label = "South Carolina"/>
					<form:option value="SD" label = "South Dakota"/>
					<form:option value="TN" label = "Tennessee"/>
					<form:option value="TX" label = "Texas"/>
					<form:option value="UT" label = "Utah"/>
					<form:option value="VT" label = "Vermont"/>
					<form:option value="VA" label = "Virginia"/>
					<<form:option value="WA" label = "Washington"/>
					<<form:option value="WV" label = "West Virginia"/>
					<form:option value="WI" label = "Wisconsin"/>
					<form:option value="WY" label = "Wyoming"/>
				</form:select>
				<form:errors path = "stateOfResidence"/>
				</div>
			</div>

			<div id="activityLevelContainer">
				<div id="surveyActivityTitle">Activity Level:</div>
				<div id="surveyActivityChoice">
					<label for = "activityLevel">Activity Level</label>
					<form:radiobutton path = "activityLevel" value="Inactive" label ="Inactive" />
					<form:radiobutton path ="activityLevel" value="Sedentary" label="Sedentary"/> 
					<form:radiobutton path ="activityLevel" value="Active"  label="Active" />
					<form:radiobutton path ="activityLevel" value="Extremely Active" label="Extremely Active"/>
				</div>
				<form:errors path = "activityLevel"/>
			</div>
			<div id="submitButton">
				<input class="formSubmitButton" type="submit" value="Submit" />
				
			</div>
		</div>
	</form:form>

	</div>
	</div>


</section>
</body>
</html>

