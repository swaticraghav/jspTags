<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="theLocale"
	value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" />
<fmt:setLocale value="${theLocale}" />
<fmt:setBundle
	basename="com.luv2code.jsp.tagdemo.i18n.resources.mylabels" />
<html>
<body>

	<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
	<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
	<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
	<hr>
	<i><fmt:message key="label.greeting"></fmt:message></i>
	<br />
	<br />
	<fmt:message key="label.firstname"></fmt:message>
	<i>Swati</i>
	<br />
	<fmt:message key="label.lastname"></fmt:message>
	<i>Raghav</i>
	<br />
	<br />
	<b><i><fmt:message key="label.welcome"></fmt:message></i></b>

	<hr>

	selected locale: ${theLocale}
</body>
</html>