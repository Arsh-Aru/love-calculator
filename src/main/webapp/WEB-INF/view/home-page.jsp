<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">My Love Calculator world</h1>
	<hr />
	<form:form action="result-page" method="get" modelAttribute="userInfo">
		<div align="center">
			<p>
				<label>Your Name :</label>
				<form:input  id="yn" path="userName" />
			</p>
			<p>
				<label>Crush Name :</label>
				<form:input id="cn" path="crushName" />
			</p>
			<br /> <input type="submit" value="Calculate">
		</div>
	</form:form>
</body>
</html>