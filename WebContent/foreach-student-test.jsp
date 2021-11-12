<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.luv2code.jsp.tagdemo.Student"%>

<%
	// create sample data for testing.. this is normally created by MVC
	List<Student> data = new ArrayList<>();
	data.add(new Student("Swati", "Raghav", false));
	data.add(new Student("Swat", "Ragha", false));
	data.add(new Student("Swa", "Ragh", true));

	pageContext.setAttribute("myStudents", data);
%>

<html>
<body>
	<table border="1"">
		<tr>
			<th>firstName</th>
			<th>lastName</th>
			<th>goldCustomer</th>
		</tr>
		<c:forEach var="tempStudent" items="${myStudents}">
			<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>${tempStudent.goldCustomer}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>