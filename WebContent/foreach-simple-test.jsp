<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String[] cities = { "Bangalore", "Mumbai", "Bangkok" };
	pageContext.setAttribute("myCities", cities);
%>

<html>
<body>
	<c:forEach var="city" items="${myCities}">
	${city}
	<br />
		<br />
	</c:forEach>
</body>
</html>