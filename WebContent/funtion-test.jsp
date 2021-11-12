<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<body>

	<c:set var="string" value="findTheLengthOfTheString" />

	Length of the concerned String
	<b>${string }</b> is ${ fn:length(string)}
	</br>
	</br> Upper case version: ${fn:toUpperCase(string) }
	</br>
	</br> String starts with 'find':
	<c:if test="${fn:startsWith(string, find) }">
		Yes
	</c:if>
	<c:if test="${not fn:startsWith(string, find) }">
		No
	</c:if>
	<br />
	<br/>
	<c:set var="foodItems" value="pasta, pizza, samosa, burger" />
	<c:set var="food" value="${fn:split(foodItems, ',') }" />
	<c:forEach var="temp" items="${food}">
	food items: ${temp }
	<br />
	</c:forEach>


</body>
</html>