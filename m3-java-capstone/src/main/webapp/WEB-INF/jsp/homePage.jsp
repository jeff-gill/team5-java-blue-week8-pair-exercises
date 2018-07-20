<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/Header.jsp" />

<section class="parkList">
<div>
	<c:forEach items="${parks}" var="park">
		<div class="parkContainer">
			<div class="homePageContainer">
				<a href="<c:url value="parkDetail?parkCode=${park.parkCode}" />">
					<img class="homePageImage" src="img/parks/${park.parkCode}.jpg" />
				</a>
			</div>
			<div class="homePageNameAndDetails">
				<div class="divHomePageParkName">
					<a id="homePageParkName"
						href="<c:url value="parkDetail?parkCode=${park.parkCode}" />">
						${park.parkName} </a>
				</div>
				<div class="homePageParkDescription">
					${park.parkDescription}<br>
				</div>
			</div>
		</div>
	</c:forEach>

	</div>
</section>


</body>
</html>