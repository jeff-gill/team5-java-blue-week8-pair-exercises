<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url ="/WEB-INF/jsp/Header.jsp" />

<section class="detailContent">
	<div class="parkDetailsContainer">
		<div class="detailImage">
			<img src="img/parks/${park.parkCode}.jpg" />
		</div>
		
		<div class="detailParkTitleBar">
			<div class="detailParkName">
				${park.parkName}
			</div>
			<div class="detailParkState">
				${park.state}
			</div>
		</div>
	</div>

</section>