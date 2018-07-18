<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url ="/WEB-INF/jsp/Header.jsp" />

<section class="parkList">
	<div class="parkContainer">
		<c:forEach items="${parks}" var = "park">
			
			<div class="homePageImage">
				<a href = "<c:url value="parkDetail?parkCode=${park.parkCode}" />">
					<img src="img/parks/${park.parkCode}.jpg" />
				</a>
			</div>
			<div class="homePageNameAndDetails">
				<div class="homePageParkName">
					<a href = "<c:url value="parkDetail?parkCode=${park.parkCode}" />">
						${park.parkName} 
					</a>	
				</div>
				<div class="homePageParkDescription">
					${park.parkDescription}
				</div>
			</div>
		</c:forEach>
	
	</div>
</section>
	

</body>
</html>