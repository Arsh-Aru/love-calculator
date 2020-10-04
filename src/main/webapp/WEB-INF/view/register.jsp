<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
</head>
<body>
	<div align="center">
		<h1>Registration Details</h1>
		<form:form action="register-success" method="get"  modelAttribute="registerInfo">
			<label>Name:</label>
			<form:input path="name" />
			<br />
			<label>User Name</label>
			<form:input path="userName" />
			<br />
			<label>Password</label>
			<form:password path="password" />
			<br />
			<form:label path="">Country</form:label>
			<form:select path="country">
				<form:option value="Ind" label="India"></form:option>
				<form:option value="Usa" label="USA"></form:option>
				<form:option value="Pak" label="Pakistan"></form:option>
			</form:select>
			<br />
			<label>Hobby</label> Cricket
				<form:checkbox path="hobby" value="Cricket" />
				Reading
				<form:checkbox path="hobby" value="Reading" />
				Programming
				<form:checkbox path="hobby" value="Programming" />
				Travel
				<form:checkbox path="hobby" value="Travel" />
			<br />
			<label>Gender</label> Male
				<form:radiobutton path="gender" value="male" />
				Female
				<form:radiobutton path="gender" value="female" />
			<br />
				<input type="submit" value="register" />
		</form:form>
	</div>
</body>
</html>