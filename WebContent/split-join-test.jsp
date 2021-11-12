<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<body>
	<!-- Split example -->
		<c:set var="foodList" value="samosa, pizza, sizzler, cake, ice cream" />
		<c:set var="foodItem" value="${fn:split(foodList, ',') }" />
		<c:forEach var="temp" items="${foodItem }">
			<br/>${temp }
		</c:forEach>
	<!-- Join Example -->
		<c:set var="foodItems" value="${fn:join(foodItem, ',') }" />
		<br/> The list
		<br/>
		${foodItems}

</body></html>