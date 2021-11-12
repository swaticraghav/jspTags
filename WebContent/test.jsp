<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<c:set var="date" value="<%= new Date() %>" />
time on the server is: ${date}
</body></html>