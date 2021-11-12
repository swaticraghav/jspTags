<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.luv2code.jsp.tagdemo.Student, java.util.*"%>
<html>
<%
	List<Student> students = new ArrayList<>();
	students.add(new Student("Bagel", "Zamania", false));
	students.add(new Student("Bage", "Zamani", false));
	students.add(new Student("Bag", "Zaman", true));

	pageContext.setAttribute("myStudents", students);
%>
<body>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
			<th>Discount Applied?</th>
		</tr>
		<c:forEach var="student" items="${myStudents}">
			<tr>
				<th>${student.firstName}</th>
				<th>${student.lastName}</th>
				<th>${student.goldCustomer}</th>
				<th>
					<c:if test="${student.goldCustomer}">
						Special Discount Applied
					</c:if>
					<c:if test="${not student.goldCustomer}">
						Special Discount not Applied
					</c:if>
				</th>
			</tr>
		</c:forEach>
	</table>
	
	

</body>
</html>