<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/Header.jsp" />

<section class="favoriteList">
	<div class="favoriteTitleContainer">
		<h1 id="favoriteParkTitle">Your Favorite Parks!</h1>
		<div id="favoriteParkSummary">
			<p>Thank you for taking the time to fill out our survey. The
				information provided will help us understand the visitors that come
				to our valuable National Parks all across the Great United States of
				America.</p>
			<p>Below you will find a list of all the parks that have been
				listed as a favorite by someone taking the survey like you. We
				invite you to click the photo or park name to follow the link to the
				park details page. Thank you and have a great day!!</p>
		</div>
	</div>
	<div class="favoriteParksListContainer">
		<c:forEach items="${favorites}" var="favoritePark">
			<div id="favoriteParksItemContainer">
				<div id="favoriteParkPicDIV">
					<img id="favoriteParkPic"
						src="img/parks/${favoritePark.parkCode}.jpg">
				</div>
				<div id="favoriteParkName">${favoritePark.parkName}</div>
				<div id="favoriteParkCount">${favoritePark.voteCount} votes!</div>
			</div>
		</c:forEach>
	</div>
</section>
</body>
</html>